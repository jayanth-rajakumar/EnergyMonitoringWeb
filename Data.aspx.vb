Imports System.Net
Imports System.IO
Imports Newtonsoft.Json.Linq
Imports System.Data.OleDb
Imports System.Data
Imports System.Web.UI.DataVisualization.Charting

Partial Class Data
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Session("username_sval") = "5CCF7FB0F47F"
        Label1.Text = "MAC ID: " & Session("username_sval")



        If IO.File.Exists(Server.MapPath("firebasedata.json")) Then

            IO.File.Delete(Server.MapPath("firebasedata.json"))


        End If
        Dim webc As WebClient = New WebClient
        webc.DownloadFile("https://energymonitor-a1917.firebaseio.com/.json", Server.MapPath("firebasedata.json"))
        webc.Dispose()


        Dim readText As String = File.ReadAllText(Server.MapPath("firebasedata.json"))
        cleartable("ApparentPower")
        cleartable("ActivePower")
        cleartable("ReactivePower")
        cleartable("PowerFactor")
        cleartable("VRMS")
        cleartable("IRMS")
        cleartable("Frequency")

        Dim json As JObject = JObject.Parse(readText)

        For Each Row In json(Session("username_sval")).ToList()
            Dim tablename As String = Row.ToString
            tablename = tablename.Split(":")(0).Substring(1, tablename.ToString.Split(":")(0).Length - 2)

            If Not (tablename = "ActivePower" Or tablename = "Frequency" Or tablename = "VRMS" Or tablename = "IRMS") Then
                GoTo skip
            End If
            Dim con = New OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" + "DATA SOURCE=" + Server.MapPath("Users.mdb"))
            Dim cmd As OleDbCommand
            cmd = New OleDbCommand()


            For Each row2 In Row.Children.Children
                Dim datakey As String = row2.ToString.Split(":")(0).Substring(1, row2.ToString.Split(":")(0).Length - 2)
                Dim dataval As String = row2.ToString.Split(":")(1).Substring(2, row2.ToString.Split(":")(1).Length - 3)

                cmd.CommandText = "insert into " + tablename + " values('" + Session("username_sval") + "','" + datakey + "','" + dataval + "')"
                ' 
                cmd.Connection = con
                con.Open()
                Try
                    cmd.ExecuteNonQuery()
                Catch ex As Exception
                    ' Response.Write("<script>alert('Error');</script>")
                    MsgBox(cmd.CommandText)
                End Try

                con.Close()
            Next
skip:

        Next

        DD_Year.Items.Clear()
        DD_Month.Items.Clear()
        DD_Date.Items.Clear()
        DD_Hours.Items.Clear()
        DD_Minutes.Items.Clear()
        DD_Seconds.Items.Clear()

        For i = 2018 To 1970 Step -1
            DD_Year.Items.Add(i)
        Next

        For i = 1 To 12
            DD_Month.Items.Add(i)
        Next

        For i = 1 To 31
            DD_Date.Items.Add(i)
        Next

        For i = 0 To 23
            DD_Hours.Items.Add(i)
        Next
        For i = 0 To 59
            DD_Minutes.Items.Add(i)
        Next
        For i = 0 To 59
            DD_Seconds.Items.Add(i)
        Next

    End Sub
  

    Sub cleartable(a As String)
        Dim con = New OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" + "DATA SOURCE=" + Server.MapPath("Users.mdb"))
        Dim cmd As OleDbCommand
        cmd = New OleDbCommand()
        cmd.CommandText = "delete from " + a

        cmd.Connection = con
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim con = New OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" + "DATA SOURCE=" + Server.MapPath("Users.mdb"))
        Dim sz As String = DropDownList1.SelectedItem.Text
        If sz = "Energy" Then
            sz = "ActivePower"
        End If
        Dim query As String = "SELECT * from " & sz & " where User='" & Session("username_sval") & "'"
        Dim oledbAdapter As OleDbDataAdapter
        Dim ds As New DataSet
        con.Open()
        oledbAdapter = New OleDbDataAdapter(query, con)
        Try
            oledbAdapter.Fill(ds)
        Catch ex As Exception
            MsgBox(query)
        End Try
        For k As Integer = 1 To Table1.Rows.Count - 1
            Table1.Rows.RemoveAt(1)
        Next

        For i = 0 To ds.Tables(0).Rows.Count - 1


            Dim nDateTime As System.DateTime = New System.DateTime(1970, 1, 1, 0, 0, 0, 0)
            Dim nTimestamp As Double = Double.Parse(ds.Tables(0).Rows(i).Item(1))
            nDateTime = nDateTime.AddSeconds(nTimestamp)
            nDateTime = nDateTime.AddSeconds(330 * 60)

            If TextBox2.Text = "From" And TextBox3.Text = "To" Then
                Dim tRow As TableRow = New TableRow()
                tRow.ForeColor = Drawing.Color.White
                Dim cell1, cell2 As New TableCell
                cell1.Text = nDateTime

                cell2.Text = ds.Tables(0).Rows(i).Item(2)
                tRow.Cells.Add(cell1)
                tRow.Cells.Add(cell2)
                Table1.Rows.Add(tRow)
            Else
                Dim s1() As String = TextBox2.Text.Split("/")
                Dim s2() As String = TextBox3.Text.Split("/")

                Dim s1DateTime As System.DateTime = New System.DateTime(Integer.Parse(s1(0)), Integer.Parse(s1(1)), Integer.Parse(s1(2)), Integer.Parse(s1(3)), Integer.Parse(s1(4)), Integer.Parse(s1(5)))
                Dim s2DateTime As System.DateTime = New System.DateTime(Integer.Parse(s2(0)), Integer.Parse(s2(1)), Integer.Parse(s2(2)), Integer.Parse(s2(3)), Integer.Parse(s2(4)), Integer.Parse(s2(5)))
                'MsgBox(s1DateTime.ToString)
                'MsgBox(s2DateTime.ToString)

                If nDateTime >= s1DateTime And nDateTime <= s2DateTime Then
                    Dim tRow As TableRow = New TableRow()
                    tRow.ForeColor = Drawing.Color.White
                    Dim cell1, cell2 As New TableCell
                    cell1.Text = nDateTime

                    cell2.Text = ds.Tables(0).Rows(i).Item(2)
                    tRow.Cells.Add(cell1)
                    tRow.Cells.Add(cell2)
                    Table1.Rows.Add(tRow)
                End If
            End If

         
        Next

        Table1.Visible = True


        Chart1.Series.Clear()
        Chart1.Titles.Add(sz)
        Dim s As New Series
        s.ChartType = SeriesChartType.Line

        For k As Integer = 1 To Table1.Rows.Count - 1

            s.Points.AddXY(Table1.Rows(k).Cells(0).Text, Table1.Rows(k).Cells(1).Text)
        Next
        Chart1.Series.Add(s)
        Chart1.Visible = True

    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As System.EventArgs) Handles TextBox2.TextChanged

    End Sub

   

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim strx As String = DD_Year.SelectedItem.Text & "/" & DD_Month.SelectedItem.Text & "/" & DD_Date.SelectedItem.Text & "/" & DD_Hours.SelectedItem.Text & "/" & DD_Minutes.SelectedItem.Text & "/" & DD_Seconds.SelectedItem.Text
        TextBox2.Text = strx

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim strx As String = DD_Year.SelectedItem.Text & "/" & DD_Month.SelectedItem.Text & "/" & DD_Date.SelectedItem.Text & "/" & DD_Hours.SelectedItem.Text & "/" & DD_Minutes.SelectedItem.Text & "/" & DD_Seconds.SelectedItem.Text
        TextBox3.Text = strx
    End Sub
End Class
