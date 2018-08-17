<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication1.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {}
        .style3
        {
            width: 38%;
            font-size: large;
        }
        .style4
        {
            font-size: x-large;
        }
        .style5
        {
            height: 24px;
        }
        .style6
        {
            width: 140px;
        }
        .style7
        {
            height: 24px;
            width: 140px;
        }
        .style8
        {
            height: 26px;
            font-size: large;
            width: 520px;
        }
        .style12
        {
            width: 554px;
            height: 19px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style2">
        &nbsp;</p>
    <p class="style4">
        Election Details</p>
    <p class="style4">
        &nbsp;</p>
    <p class="style4">
        &nbsp;</p>
    <p class="style4">
        &nbsp;</p>
    <table class="style3">
        <tr>
            <td class="style6">
                Election Name</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Start Date</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Start Time</td>
            <td class="style5">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                End Date</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                End Time</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
&nbsp;<table class="style8" style="width: 35%; height: 10%;">
        <tr>
            <td class="style12">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Questions.aspx">Questions</asp:HyperLink>
            </td>
            <td class="style12">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Electors.aspx">Electors</asp:HyperLink>
            </td>
            <td class="style12">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Results.aspx">Results</asp:HyperLink>
            </td>
        </tr>
    </table>
    <p class="style2">
        &nbsp;</p>
    <p class="style2">
        &nbsp;</p>
</asp:Content>
