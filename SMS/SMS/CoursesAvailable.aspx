<%@ Page Title="" Language="C#" MasterPageFile="~/SMS.Master" AutoEventWireup="true" CodeBehind="CoursesAvailable.aspx.cs" Inherits="SMS.CoursesAvailable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <legend>Courses Available</legend>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="cid" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("cid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cdurationLabel" runat="server" Text='<%# Eval("cduration") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cfeeLabel" runat="server" Text='<%# Eval("cfee") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="cidLabel1" runat="server" Text='<%# Eval("cid") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cdurationTextBox" runat="server" Text='<%# Bind("cduration") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cfeeTextBox" runat="server" Text='<%# Bind("cfee") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cdurationTextBox" runat="server" Text='<%# Bind("cduration") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cfeeTextBox" runat="server" Text='<%# Bind("cfee") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("cid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cdurationLabel" runat="server" Text='<%# Eval("cduration") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cfeeLabel" runat="server" Text='<%# Eval("cfee") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">cid</th>
                                    <th runat="server">cname</th>
                                    <th runat="server">cduration</th>
                                    <th runat="server">cfee</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("cid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cdurationLabel" runat="server" Text='<%# Eval("cduration") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cfeeLabel" runat="server" Text='<%# Eval("cfee") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString4 %>" DeleteCommand="DELETE FROM [CourseTable] WHERE [cid] = @cid" InsertCommand="INSERT INTO [CourseTable] ([cname], [cduration], [cfee]) VALUES (@cname, @cduration, @cfee)" SelectCommand="SELECT * FROM [CourseTable]" UpdateCommand="UPDATE [CourseTable] SET [cname] = @cname, [cduration] = @cduration, [cfee] = @cfee WHERE [cid] = @cid">
            <DeleteParameters>
                <asp:Parameter Name="cid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="cduration" Type="String" />
                <asp:Parameter Name="cfee" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="cduration" Type="String" />
                <asp:Parameter Name="cfee" Type="Int32" />
                <asp:Parameter Name="cid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </fieldset>
</asp:Content>
