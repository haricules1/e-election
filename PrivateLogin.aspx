<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PrivateLogin.aspx.cs" Inherits="WebApplication1.PrivateLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

    .style2
    {
        width: 50%;
        height: 180px;
        margin-left: 0px;
    }
    .style6
    {
        font-family: "Comic Sans MS";
        text-align: center;
    }
    .style9
    {
        color: #0033CC;
    }
    .style8
    {
        text-align: center;
        font-family: "Comic Sans MS";
        color: #0033CC;
    }
    .style7
    {
        font-family: "Comic Sans MS";
        color: #0033CC;
    }
        .style10
        {
            text-align: center;
            width: 230px;
            font-family: "Comic Sans MS";
            color: #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <table align="center" class="style2">
        <tr>
            <td class="style6" colspan="2">
                <span class="style9"><strong>Login</strong></td>
        </tr>
        <tr>
            <td class="style10">
                Organization</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Username</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Password</td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2" style="text-align: center">
                &nbsp;</td>
        </tr>
</table>
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
