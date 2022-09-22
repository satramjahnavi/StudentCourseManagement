<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="SMS.StudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 50%;
    }
    .btn{
        background-color: #4CAF50;
  color:black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-block: 4px solid black;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <legend>Student Details</legend>
        
        
        
        <center>
        <table class="auto-style1">
            <tr><td>FirstName:</td>

                <td>
                   <asp:TextBox ID="Txtsfname" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr><td>Last Name:</td>
                <td>
                    <asp:TextBox ID="Txtslname" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr><td>Email:</td>
                <td>
                    <asp:TextBox ID="Txtsemail" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr><td>Course Enrolled:</td>
                <td>
                    <asp:TextBox ID="Txtscourse" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr><td>Fee Due:</td>
                <td>
                    <asp:TextBox ID="Txtfeedue" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
        </table>
        
        <p style="text-align:center"><b>Search here by entering your first name <i class='fas fa-hand-point-right' style='font-size:15px'></i></b><asp:Button ID="Buttonsearch" runat="server" OnClick="Buttonsearch_Click" CssClass="btn" Text="Search" /></p>
         <asp:Label ID="Labelmsg" runat="server"></asp:Label>
        </center>
        
    </fieldset>
</asp:Content>
