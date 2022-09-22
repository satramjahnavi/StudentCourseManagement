<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SMS.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="image/About.png" height="300" width="600" />
   <b><p>In this platform we provide different courses which helps in buliding your technical skills</p></b>
    <asp:BulletedList ID="BulletedList1" runat="server" BackColor="#FF99FF" BorderColor="#FFCCFF" Font-Bold="True" Width="500px">
        <asp:ListItem Text="Courses can help you understand technology" Value="1"></asp:ListItem>
        <asp:ListItem Text="They can enhance problem-solving skills" Value="1"></asp:ListItem>
        <asp:ListItem Text="Courses can be applied to data visualisation" Value="1"></asp:ListItem>
        <asp:ListItem Text="Courses can complement creativity" Value="1"></asp:ListItem>
        <asp:ListItem Text="Courses can improve career prospects" Value="1"></asp:ListItem>
    </asp:BulletedList>
    <br /> <br />
    <br /> <br />
    <div style="background-color:#09caf6">
        
        <img src="image/asp.net_.jpg" height="50" width="50" />&nbsp&nbsp&nbsp;
        <img src="image/c-sharp-logo.png" height="50" width="50" />&nbsp&nbsp&nbsp;
        <img src="image/java.jpg" height="50" width="50" />&nbsp&nbsp&nbsp;
        <img src="image/python.png" height="50" width="50" />&nbsp&nbsp&nbsp;
    </div>
</asp:Content>
