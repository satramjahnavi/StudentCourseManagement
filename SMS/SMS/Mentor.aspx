<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Mentor.aspx.cs" Inherits="SMS.Mentor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 30%;
            border-style: solid;
            border-width: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Mentor Page</h1>
    <div>

        <table align="center" style="background-color:#c87dc8" border="1" class="auto-style1">
            <tr>
                <td>Mentor Name</td>
                <td>
                    <asp:TextBox ID="Txtmname" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="Txtmemail" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="Txtmphone" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Course</td>
                <td>
                    <asp:DropDownList ID="DDLmentor" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="cname" DataValueField="cname" BackColor="#CCCCFF">
                        <asp:ListItem Value="0" Text="Select Courses"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString2 %>" SelectCommand="SELECT [cname] FROM [CourseTable]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Qualification</td>
                <td>
                    <asp:TextBox ID="Txtmqualif" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>JoinDate</td>
                <td>
                    <asp:TextBox ID="Txtmdate" runat="server" TextMode="Date" BackColor="#CCCCFF"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Addmentor" runat="server" OnClick="Addmentor_Click" Text="Add Mentor" BackColor="#99CCFF" BorderColor="Black" />
                </td>
                <td>
                    <asp:Label ID="Labelmentor" runat="server" ForeColor="#669900"></asp:Label>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
