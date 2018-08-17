<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Organize.aspx.cs" Inherits="WebApplication1.Organize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style2
    {
        width: 50%;
        height: 180px;
        margin-left: 0px;
    }
    .style3
    {
        text-align: center;
        width: 230px;
        font-family: "Comic Sans MS";
            color: #0033CC;
        }
    .style5
    {
    }
    .style6
    {
        font-family: "Comic Sans MS";
        text-align: center;
    }
    .style7
    {
        font-family: "Comic Sans MS";
        color: #0033CC;
    }
    .style8
    {
        text-align: center;
        font-family: "Comic Sans MS";
        color: #0033CC;
    }
    .style9
    {
        color: #0033CC;
    }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table align="center" class="style2">
        <tr>
            <td class="style6" colspan="2">
                <span class="style9"><strong>Login</strong></td>
        </tr>
        <tr>
            <td class="style3">
                Organization</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Password</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
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
                <strong>New user? 
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Signup.aspx">Sign Up</asp:HyperLink>
                </strong></td>
        </tr>
</table>
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
