<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            question:
            <asp:Label ID="questionLabel" runat="server" Text='<%# Eval("question") %>' />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:electionConnectionString %>" 
        SelectCommand="select distinct questions.qid,questions.question,options.options from questions inner join options on questions.qid=options.qid inner join vlogin on vlogin.organization=questions.organization and vlogin.ename=questions.ename and vlogin.organization=options.organization and vlogin.ename=options.ename group by questions.qid,questions.question,options.options">
    </asp:SqlDataSource>
</asp:Content>
