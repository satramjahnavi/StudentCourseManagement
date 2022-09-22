<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SMS.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StudentCourseManagements</title>
    <link href="lib/font-awesome/css/all.css" rel="stylesheet" />
    <style>
        body{
            background-color:#f2d4f7;
             
        }
        td{
            height:30px;
            vertical-align:bottom;
        }
    </style>
</head>
<body>         
    <form id="form1" runat="server">
        <div>
            <center>
           <div>
                <h1><i class="fa-solid fa-book-open-reader"></i> STUDENT COURSE MANAGEMENT SYSTEM</h1>
                </div>
                <hr />
                <div style="background-color:#09caf6">
                    <b><p>ADMIN LOGIN</p></b>
                </div>
                
                <div>
                   <p> <i class="fa-solid fa-user fa-3x"></i></p>
            
                <table style="background-color:#c87dc8" align="center" border="1" class="auto-style2">
                    <tr>
                        <td>Admin Username</td>
                        <td>
                            <asp:TextBox ID="TxtadminID" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="Txtadminpswd" runat="server" TextMode="Password" BackColor="#CCCCFF"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Loginadmin" runat="server" Forecolor="Black" Text="Login" OnClick="Loginadmin_Click" style="height: 29px" BackColor="#99CCFF" BorderColor="Black" />
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="Labelmsg" forecolor="green" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
              </div>
                <br />
                <asp:HyperLink ID="Adminhyperlink" runat="server" NavigateUrl="~/AdminRegistration.aspx">Are you a new Admin? Register</asp:HyperLink>
            </center>

            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><hr />
            <div style="background-color:#09caf6">
            <p style="text-align:center">@ASP.NET</p>
                </div>
            </div>
        
    </form>
</body>
</html>
