<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="SMS.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <table align="center" style="background-color:#c87dc8" border="1" class="auto-style1">
            <tr>
                <td>Student First Name</td>
                <td>
                    <asp:TextBox ID="Txtsfname" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtsfname" ErrorMessage="please enter your first name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Student Last Name</td>
                <td>
                    <asp:TextBox ID="Txtslname" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtslname" ErrorMessage="please enter your second name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Parent Name</td>
                <td>
                    <asp:TextBox ID="Txtpname" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Parent Phone</td>
                <td>
                    <asp:TextBox ID="Txtpphone" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtpphone" ErrorMessage="please enter correct mobile number" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="Txtemail" runat="server" TextMode="Email" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="Txtphone" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txtphone" ErrorMessage="please enter your correct mobile number" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Course</td>
                <td>
                    <asp:DropDownList ID="DDLstudent" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="True" DataTextField="cname" AppendDataBoundItems="True" DataValueField="cname" OnSelectedIndexChanged="DDLstudent_SelectedIndexChanged" BackColor="#CCCCFF">
                        <asp:ListItem Value="0" Text="select Course"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" SelectCommand="SELECT [cname] FROM [CourseTable]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Course Fees</td>
                <td>
                    <asp:TextBox ID="Txtcoursefee" runat="server" TextMode="Number" BackColor="#CCCCFF"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>First Payment</td>
                <td>
                    <asp:TextBox ID="Txtfirstpayment" runat="server" AutoPostBack="true" OnTextChanged="Txtfirstpayment_TextChanged" TextMode="Number" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Fees Due</td>
                <td>
                    <asp:TextBox ID="Txtfeesdue"   runat="server" TextMode="Number" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Join Date</td>
                <td>
                    <asp:TextBox ID="joindate" runat="server" TextMode="Date" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>Admin Mail</td>
                <td><asp:TextBox ID="Txtadminmail" runat="server" BackColor="#CCCCFF"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Admin Password</td>
                <td><asp:TextBox ID="Txtadminpassword" runat="server" BackColor="#CCCCFF" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>confirm Password</td>
                <td><asp:TextBox ID="Txtconfirm" runat="server" BackColor="#CCCCFF" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtadminpassword" ControlToValidate="Txtconfirm" ErrorMessage="incorrect password"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td><img src="image/student.png" height="20" width="20" />&nbsp
                    <asp:Button ID="Addstudent" runat="server" BackColor="#99CCFF" BorderColor="Black" Text="Add Student" OnClick="Addstudent_Click" />
                </td>
                <td>
                    <asp:Label ID="Labelstudent" runat="server" ForeColor="Black"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
