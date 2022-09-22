<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="SMS.AdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminRegistration</title>
    <link href="lib/font-awesome/css/all.css" rel="stylesheet" />
    <style>
        body{
            background-color:#f2d4f7;
             
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <center>
           <div>
                <h1><i class="fa-solid fa-book-open-reader"></i> STUDENT COURSE MANAGEMENT SYSTEM</h1>
                </div>
                <hr />
                <div style="background-color:#09caf6">
                    <b><p>ADMIN REGISTRATION</p></b>
                </div>
                
                <div>
                   
                    <p><i class="fa-solid fa-user fa-3x"></i></p>
                <table style="background-color:#c87dc8" align="center" border="1" class="auto-style2">
                   <tr>
                        <td>ID</td>
                        <td>
                            <asp:TextBox ID="Txtadminid" runat="server" BackColor="#CCCCFF" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>
                            <asp:TextBox ID="Txtadminname" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtadminname" ErrorMessage="please enter your name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>UserName</td>
                        <td>
                            <asp:TextBox ID="Txtadminuname" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtadminuname" ErrorMessage="please enter your user name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="Txtadminpswd" runat="server" TextMode="Password" BackColor="#CCCCFF"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtadminpswd" ErrorMessage="please enter your password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Button ID="Registeradmin" runat="server" Forecolor="Black" Text="Register" OnClick="Loginadmin_Click" style="height: 29px" BackColor="#99CCFF" BorderColor="Black" />
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="Labelmsg" forecolor="green" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
              </div>

            </center>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><hr />
            <div style="background-color:#09caf6">
            <p style="text-align:center">@ASP.NET</p>
                </div>
        </div>
    </form>
</body>
</html>
