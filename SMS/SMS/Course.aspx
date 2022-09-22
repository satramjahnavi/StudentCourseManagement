<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="SMS.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 20%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Course page</h2>
    <br />

    <table align="center" style="background-color:#c87dc8" align="center" border="1" class="auto-style1">
        <tr>
            <td>Course Name</td>
            <td>
                <asp:TextBox ID="Cname" runat="server" BackColor="#CCCCFF" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Course Duration</td>
            <td>
                <asp:TextBox ID="Cduration" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Course Fees</td>
            <td>
                <asp:TextBox ID="Cfees" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Add" runat="server" Forecolor="Black" Text="Add Course" BackColor="#99CCFF" BorderColor="Black" OnClick="Add_Click" />
            </td>
            <td>
                <asp:Label ID="Labelcourse" Forecolor="green" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <a href="CoursesAvailable.aspx">Courses Available</a>
    <br /><br/><br /><br />
</asp:Content>
