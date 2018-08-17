<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Elections.aspx.cs" Inherits="WebApplication1.Elections" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    .style4
    {
        color: #0066FF;
            text-align: right;
        }
        .style5
        {
            color: #0066FF;
            text-align: left;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style4">
        &nbsp;</p>
    <p class="style4">
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BorderStyle="None" 
            onclick="Button2_Click" Text="Logout" 
            style="text-align: right; margin-left: 0px" />
    </p>
    <p class="style4">
        &nbsp;</p>
    <p class="style5">
        Elections</p>
    <p class="style5">
        &nbsp;</p>
    <table align="center" class="style2" style="width: 50%; height: 50%; font-size: medium;" 
        width="50%">
        <tr>
            <td colspan="2">
                <span class="style4">New Election</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Election Name</span></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="235px" CssClass="style4"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <span class="style4"></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
&nbsp;
                </span>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="text-align: center" Text="Create" BorderStyle="None" 
                    CssClass="style4" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <span class="style4"></td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <table id="elections" width="100%" align="center">
    <tr>
    <td>Election Name</span></td>
    <tr>
    <td>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" >
            <ItemTemplate>
                <asp:Button ID="Button3" runat="server" Text='<%# Eval("ename") %>' 
                    CommandArgument='<%# Eval("ename") %>' onclick="Button3_Click" 
                    BorderStyle="None" />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:electionConnectionString %>" 
            SelectCommand="SELECT * FROM [elections] WHERE ([organization] = @organization)">
            <SelectParameters>
                <asp:SessionParameter Name="organization" SessionField="org" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </td>
    </table>
</asp:Content>
