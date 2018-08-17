<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="WebApplication1.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style2
    {
        font-size: x-large;
    }
    .style3
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p class="style2">
    Results</p>
<p class="style2">
    &nbsp;</p>
<p class="style2">
    &nbsp;</p>
<p>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        style="font-size: large" Width="411px">
        <ItemTemplate>
            <table class="style3">
                <tr>
                    <td>
                        <asp:Label ID="questionsLabel" runat="server" Text='<%# Eval("questions") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="optionsLabel" runat="server" Text='<%# Eval("options") %>' />
                    </td>
                    <td>
                        <asp:Label ID="votesLabel" runat="server" Text='<%# Eval("votes") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            &nbsp;<br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:electionConnectionString %>" 
        SelectCommand="SELECT * FROM [options] WHERE (([organization] = @organization) AND ([ename] = @ename))">
        <SelectParameters>
            <asp:SessionParameter Name="organization" SessionField="org" Type="String" />
            <asp:SessionParameter Name="ename" SessionField="en" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
