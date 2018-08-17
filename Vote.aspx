<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vote.aspx.cs" Inherits="WebApplication1.Vote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
        <table class="style2">
            <tr>
                <td>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
                <td>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                        style="text-align: center">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="200px" 
                                ImageUrl='<%# Eval("image") %>' Width="200px" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("options") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:electionConnectionString %>" 
                        SelectCommand="SELECT * FROM [options] WHERE (([organization] = @organization) AND ([ename] = @ename) AND ([options] = @options))">
                        <SelectParameters>
                            <asp:SessionParameter Name="organization" SessionField="org" Type="String" />
                            <asp:SessionParameter Name="ename" SessionField="en" Type="String" />
                            <asp:SessionParameter Name="options" SessionField="opt" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
    </table>
<br />
<br />
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
</asp:Content>
