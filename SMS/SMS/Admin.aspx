<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SMS.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="image/Admin.jpg" height="200" width="200"/>
  <hr />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FF99FF">
        <asp:ListItem>CourseTable</asp:ListItem>
         <asp:ListItem>StudentTable</asp:ListItem>
         <asp:ListItem>MentorTable</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Buttonadmin" runat="server" OnClick="Buttonadmin_Click" Text="Display" />
    <asp:GridView ID="GridView1" runat="server" BackColor="#FFCCFF" Height="100px" Width="400px"></asp:GridView>
    </asp:Content>
