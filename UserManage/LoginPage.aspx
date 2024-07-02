<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="UserManagementSystem1.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    body{
        background-color:lightblue;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
    <table class="auto-style1">
        <tr>
            <td colspan="6" style="text-align: center; vertical-align: top">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Log In"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center">
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="UserName:"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td style="text-align: center">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password:"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td style="text-align: center">
                <asp:Button ID="Button1" runat="server" BorderStyle="None" style="margin:15px" Font-Size="X-Large" OnClick="Button1_Click" Text="Log In" />
                <asp:Button ID="Button2" runat="server" Text="New User" BorderStyle="None" Font-Size="X-Large" OnClick="Button2_Click" />
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>

       

        <tr>
            <td></td>
            <td></td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</p>
        
        
    </form>
</body>
</html>
