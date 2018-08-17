<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Options.aspx.cs" Inherits="WebApplication1.Options" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            qid:
            <asp:Label ID="qidLabel" runat="server" Text='<%# Eval("qid") %>' />
            <br />
            options:
            <asp:Label ID="optionsLabel" runat="server" Text='<%# Eval("options") %>' />
            <br />
            votes:
            <asp:Label ID="votesLabel" runat="server" Text='<%# Eval("votes") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:electionConnectionString %>" 
        SelectCommand="SELECT * FROM [options] WHERE (([organization] = @organization) AND ([ename] = @ename) AND ([qid] = @qid))">
        <SelectParameters>
            <asp:SessionParameter Name="organization" SessionField="org" Type="String" />
            <asp:SessionParameter Name="ename" SessionField="en" Type="String" />
            <asp:SessionParameter Name="qid" SessionField="qid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
