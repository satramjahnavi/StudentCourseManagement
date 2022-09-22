<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="SMS.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .button{
             background-color: #4CAF50;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-block: 4px solid black;
        }
        .td{
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    <table align="center" class="auto-style1">
        <tr>
            <td>New Student?Register <i class='fas fa-hand-point-right' style='font-size:15px'></i></td>
            <td>
                <asp:Button CssClass="button" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>Already a Student <i class='fas fa-hand-point-right' style='font-size:15px'></i></td>
            <td>
                <asp:Button ID="Button2" class="button" runat="server" Text="Details" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    
    <br /><br /><br /><br /><br /><br />
    
</asp:Content>
