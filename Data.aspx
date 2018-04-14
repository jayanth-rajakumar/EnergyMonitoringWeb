<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Data.aspx.vb" Inherits="Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="black" >
    <br />
    <br />
    <br />
    <br />
    <br />
    <center>
    <form id="form1" runat="server">
   
      
        <asp:Panel ID="Panel1" runat="server" Width="703px" BorderStyle="Inset" BorderWidth="4px">
              <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Welcome, "></asp:Label><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Choose a parameter:" ForeColor="White"></asp:Label><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">Energy</asp:ListItem>
            <asp:ListItem>VRMS</asp:ListItem>
            <asp:ListItem>IRMS</asp:ListItem>
            <asp:ListItem>Frequency</asp:ListItem>
        </asp:DropDownList>  <asp:TextBox ID="TextBox2" runat="server" Width="105px">From</asp:TextBox>
               <asp:TextBox ID="TextBox3" runat="server" Width="98px">To</asp:TextBox>&nbsp;
&nbsp;<asp:Button ID="Button1" runat="server" Text="View Readings" Width="136px" OnClick="Button1_Click" />
        <br /><br />
             <asp:DropDownList ID="DD_Year" runat="server">
    </asp:DropDownList> <asp:Label ID="Label3" runat="server" ForeColor="White" Text=" / "/>
    <asp:DropDownList ID="DD_Month" runat="server">
    </asp:DropDownList><asp:Label ID="Label4" runat="server" ForeColor="White" Text=" / "/>
    <asp:DropDownList ID="DD_Date" runat="server">
    </asp:DropDownList><asp:Label ID="Label5" runat="server" ForeColor="White" Text=" , "/>
    <asp:DropDownList ID="DD_Hours" runat="server">
    </asp:DropDownList><asp:Label ID="Label6" runat="server" ForeColor="White" Text=" : "/>
    <asp:DropDownList ID="DD_Minutes" runat="server">
    </asp:DropDownList><asp:Label ID="Label7" runat="server" ForeColor="White" Text=" : "/>
    <asp:DropDownList ID="DD_Seconds" runat="server">
    </asp:DropDownList>

              <asp:Button ID="Button2" runat="server" Text="From" />
              <asp:Button ID="Button3" runat="server" style="margin-bottom: 0px" Text="To" />

          <br /><br />
        <asp:Table ID="Table1" runat="server" ForeColor="White" Width="327px" Visible="False">
            <asp:TableRow runat="server" BackColor="White" BorderStyle="Solid" ForeColor="Black">
                <asp:TableCell runat="server">Timestamp</asp:TableCell>
                <asp:TableCell runat="server">Reading</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <br />
      
              <asp:Chart ID="Chart1" runat="server" Height="456px" Visible="False" Width="566px">
                  <series>
                      <asp:Series Name="Series1">
                      </asp:Series>
                  </series>
                  <chartareas>
                      <asp:ChartArea Name="ChartArea1">
                      </asp:ChartArea>
                  </chartareas>


              </asp:Chart>
             
        </asp:Panel>
    </form>
        
        

        </center>

   
</body>
</html>
