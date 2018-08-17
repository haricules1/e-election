<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voting.aspx.cs" Inherits="WebApplication1.Voting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <table id="elections" width="100%" align="center">
    <tr>
    <td>Election Name</span></td>
    </tr>
    <tr>
    <td>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="username" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text='<%# Eval("ename") %>' CommandArgument='<%# Eval("ename") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:electionConnectionString %>" 
            SelectCommand="SELECT * FROM [vlogin] WHERE (([organization] = @organization) AND ([username] = @username))">
            <SelectParameters>
                <asp:SessionParameter Name="organization" SessionField="org" Type="String" />
                <asp:SessionParameter Name="username" SessionField="un" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </td>
    </tr>
    </table>
</asp:Content>
