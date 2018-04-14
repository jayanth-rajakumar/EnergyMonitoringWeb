<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
   .inlineBlock { display: inline-block; }
</style>

</head>
<body bgcolor="black">
    <center>
      <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    
        </center>
     <center>
    <asp:Panel ID="Panel8" runat="server" BorderStyle="Inset" BorderWidth="4px" Width="574px">
       
         <form id="form1" runat="server">
              <br />
        <asp:Panel ID="Panel1" runat="server" Width="105px" CssClass="inlineBlock">
            <asp:Panel ID="Panel2" runat="server" Width="120px">
                <asp:Label ID="Label1" runat="server" Text="MAC ID" ForeColor="White"></asp:Label>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Width="281px" CssClass="inlineBlock">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel4" runat="server" Width="105px" CssClass="inlineBlock">
            <asp:Panel ID="Panel5" runat="server" Width="120px" ForeColor="white">
                Password</asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" Width="281px" CssClass="inlineBlock">
                  <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password"></asp:TextBox>
        </asp:Panel>
        <p>
             &ensp; &ensp; &ensp;  &ensp;
            <asp:Button ID="Button1" runat="server" Text="Login" />

            &ensp;
            <asp:Button ID="Button2" runat="server" Text="Register" />
        </p>
    </form>
    </asp:Panel>
         </center>
    </body>
</html>
