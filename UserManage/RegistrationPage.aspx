<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="UserManagementSystem1.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;

    }
    body{
       background-color:lightblue;
       font-size:large;
       

    }
</style>
</head>
<body>
    <form id="form1" runat="server">
                <p>
    <table class="auto-style1">

        <tr>
         <td colspan="6" style="text-align: center; vertical-align: top;">
          <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Registration Page"></asp:Label>
        </td>
      </tr>
        
        
        <tr>
            <td>UserName : </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter name" ValidationGroup="a"></asp:RequiredFieldValidator>

                <asp:Button ID="Button4" runat="server" Text="Check Availability"  OnClick="Button4_Click" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Password :</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="pass required" ControlToValidate="TextBox2" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >Confirm Password :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="pls check pass" ValidationGroup="a"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="check pass"></asp:CompareValidator>
            </td>
        </tr>
        

        <tr>
        <td>City : </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" >

                
                 <asp:ListItem Text="Select City" value="0" Selected="True"></asp:ListItem>
                 <asp:ListItem Text="Pune" value="1"></asp:ListItem>
                 <asp:ListItem Text="Kolhapur" value="2"></asp:ListItem>
                 <asp:ListItem Text="Satara" value="3"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="city required" InitialValue="0" ValidationGroup="a"></asp:RequiredFieldValidator>
            
           
            
        </td>
        </tr>

        <tr>
        <td >Mobile No :</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="enter valid mob no" ControlToValidate="TextBox5" ValidationExpression="[0-9]{10}" ValidationGroup="a"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="mob no is required" ControlToValidate="TextBox5" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
        </tr>
        

        <tr>
            <td >Gender :</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" >
                    <asp:listItem >Male</asp:listItem>
                    <asp:listItem >Female</asp:listItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="pls select" ControlToValidate="RadioButtonList1" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email: </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="email is required" ControlToValidate="TextBox4" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="a" font-size="Medium" style="margin:15px" OnClick="Button1_Click" />
                <asp:Button ID="Button5" runat="server" Text="Login" Font-Size="Medium" OnClick="Button5_Click" />
                
            </td>
        </tr>

         
        
   </table>
</p>
    </form>
</body>
</html>
