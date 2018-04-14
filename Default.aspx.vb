Imports System.Data
Imports System.Data.SqlClient
Imports System.Security
Imports System.Security.Cryptography
Imports System.Text
Imports System.Data.OleDb



Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        '    Dim sqlConnectionString As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString1").ToString
        '    Dim sqlConnection As SqlClient.SqlConnection = New SqlClient.SqlConnection(sqlConnectionString)
        '  sqlConnection.Open()
        '  Dim insertQuery As String = "SELECT * from UserTable where email='" & TextBox1.Text & "'"

        '   Dim sqlCommand As SqlCommand = New SqlCommand(insertQuery, sqlConnection)

        '  Dim dr As SqlClient.SqlDataReader

        '  dr = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection)

        '  While dr.Read
        'Dim pw As String = CType(dr.GetValue(dr.GetOrdinal("password")), String)


        '  If pw = TextBox2.Text Then
        'Response.Write("<script>alert('Log in successful');</script>")
        ' Else
        ' Response.Write("<script>alert('Log in Failed');</script>")
        '  End If



        '    End While
        '
        '  dr.Close()
        ' SqlConnection.Close()


        Dim con = New OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" + "DATA SOURCE=" + Server.MapPath("Users.mdb"))

        Dim cmd As OleDbCommand


        Dim query As String = "SELECT * from UserLogin where email='" & TextBox1.Text & "'"
        Dim oledbAdapter As OleDbDataAdapter
        Dim ds As New DataSet
        con.Open()
        oledbAdapter = New OleDbDataAdapter(query, con)
        oledbAdapter.Fill(ds)
        'For i = 0 To ds.Tables(0).Rows.Count - 1
        'MsgBox(ds.Tables(0).Rows(i).Item(0) & "  --  " & ds.Tables(0).Rows(i).Item(1))
        '    Next

        Dim pwhash As String = ds.Tables(0).Rows(0).Item(1)

        Dim sSourceData As String
        Dim tmpSource() As Byte
        Dim tmpHash() As Byte
        sSourceData = TextBox2.Text
        tmpSource = ASCIIEncoding.ASCII.GetBytes(sSourceData)
        tmpHash = New MD5CryptoServiceProvider().ComputeHash(tmpSource)
        Dim pwhash2 As String = ByteArrayToString(tmpHash)

        If pwhash = pwhash2 Then

            Response.Write("<script>alert('Log in successful');</script>")

            Session("username_sval") = TextBox1.Text
            Response.Redirect("Data.aspx")


        Else
            Response.Write("<script>alert('Log in Failed');</script>")
        End If

        oledbAdapter.Dispose()
        con.Close()

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        ' Dim sqlConnectionString As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString1").ToString
        ' Dim sqlConnection As SqlClient.SqlConnection = New SqlClient.SqlConnection(sqlConnectionString)
        ' sqlConnection.Open()
        ' Dim insertQuery As String = "INSERT INTO UserTable values (@email, @password)"
        ' Dim sqlCommand As SqlCommand = New SqlCommand(insertQuery, sqlConnection)

        'sqlCommand.Parameters.AddWithValue("@email", TextBox1.Text)
        ' sqlCommand.Parameters.AddWithValue("@password", TextBox2.Text)
        ' Try
        'SqlCommand.ExecuteNonQuery()
        ' Catch ex As Exception
        'Response.Write("<script>alert('Username already exists.');</script>")
        '  End Try
        '  sqlConnection.Close()
        Dim con = New OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;" + "DATA SOURCE=" + Server.MapPath("Users.mdb"))

        Dim cmd As OleDbCommand

        cmd = New OleDbCommand()

        Dim sSourceData As String
        Dim tmpSource() As Byte
        Dim tmpHash() As Byte
        sSourceData = TextBox2.Text
        tmpSource = ASCIIEncoding.ASCII.GetBytes(sSourceData)
        tmpHash = New MD5CryptoServiceProvider().ComputeHash(tmpSource)
        Dim pwhash As String = ByteArrayToString(tmpHash)


        cmd.CommandText = "insert into UserLogin values('" + TextBox1.Text + "','" + pwhash + "')"
        cmd.Connection = con
        con.Open()
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Response.Write("<script>alert('Username already exists.');</script>")
        End Try

        con.Close()



    End Sub

    Private Function ByteArrayToString(ByVal arrInput() As Byte) As String
        Dim i As Integer
        Dim sOutput As New StringBuilder(arrInput.Length)
        For i = 0 To arrInput.Length - 1
            sOutput.Append(arrInput(i).ToString("X2"))
        Next
        Return sOutput.ToString()
    End Function

End Class
