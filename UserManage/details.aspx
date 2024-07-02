<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="UserManagementSystem1.details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body{
        background-color:lightblue;
        
    }
   
   
</style>
</head>
<body>
    <form id="form1" runat="server">
             <div>
         <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>  
  <h1><font color="olive">User Details</font></h1>  
 <table border="1" style="border-collapse: collapse" cellspacing="1">  
 <tr>  
   <td width="77" height="16" align="left" ><b><font size="2" color="red">Name:</font></b></td>  
   <td width="77" height="16" align="left" ><b><font size="2"> <asp:Label  
           ID="lbl_UserName" runat="server" Font-Bold="True"></asp:Label><br /></font></b></td>  
 </tr>  
 <tr>  
   <td width="77" height="16" align="left" ><b><font size="2" color="red">Password:</font></b></td>  
   <td width="77" height="16" align="left" ><b><font size="2"> <asp:Label  
           ID="lbl_password" runat="server" Font-Bold="True"></asp:Label><br /></font></b></td>  
 </tr>  
 <tr>  
   <td width="77" height="16" align="left" ><b><font size="2" color="red">ConfirmPassword:</font></b></td>  
   <td width="77" height="16" align="left" ><b><font size="2"> <asp:Label  
           ID="lbl_confirmpassword" runat="server" Font-Bold="True"></asp:Label><br /></font></b></td>  
 </tr>  
 <tr>  
   <td width="77" height="16" align="left" ><b><font size="2" color="red">City:</font></b></td>  
   <td width="77" height="16" align="left" ><b><font size="2"> <asp:Label  
           ID="lbl_city" runat="server" Font-Bold="True"></asp:Label><br /></font></b></td>  
 </tr>  

 <tr>  
  <td width="77" height="16" align="left" ><b><font size="2" color="red">MobileNo:</font></b></td>  
  <td width="77" height="16" align="left" ><b><font size="2"> <asp:Label  
       ID="lbl_mobileno" runat="server" Font-Bold="True"></asp:Label><br /></font></b></td>  
</tr> 
     
 <tr>  
  <td width="77" height="16" align="left" ><b><font size="2" color="red">Gender:</font></b></td>  
  <td width="77" height="16" align="left" ><b><font size="2"> <asp:Label  
       ID="lbl_gender" runat="server" Font-Bold="True"></asp:Label><br /></font></b></td>  
 </tr>  

 <tr>  
  <td width="77" height="16" align="left" ><b><font size="2" color="red">Email:</font></b></td>  
  <td width="77" height="16" align="left" ><b><font size="2"> <asp:Label  
       ID="lbl_email" runat="server" Font-Bold="True"></asp:Label><br /></font></b></td>  
</tr> 
     
     
 </table><br />

    

 <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label><br />

</div>
    </form>
</body>
</html>
