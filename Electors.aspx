<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Electors.aspx.cs" Inherits="WebApplication1.Electors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    Add Electors<br />
    <table class="style2">
        <tr>
            <td class="style3">
                Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Username</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
