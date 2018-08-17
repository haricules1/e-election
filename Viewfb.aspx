<%@ Page Title="" Language="C#" MasterPageFile="~/Organize_master.Master" AutoEventWireup="true" CodeBehind="Viewfb.aspx.cs" Inherits="WebApplication1.Viewfb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        height: 23px;
    }
    .style4
    {
        color: #660066;
        font-size: xx-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p class="style4">
        Feedbacks</p>
<p>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        style="color: #006699; font-size: large">
        <ItemTemplate>
            <br />
            <br />
            <table class="style2">
                <tr>
                    <td>
                        Name</td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" style="color: #000099" 
                            Text='<%# Eval("name") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Phone No.</td>
                    <td>
                        <asp:Label ID="phoneLabel" runat="server" style="color: #000099" 
                            Text='<%# Eval("phone") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Email</td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" style="color: #000099" 
                            Text='<%# Eval("email") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Feedback</td>
                    <td class="style3">
                        <asp:Label ID="messageLabel" runat="server" style="color: #000099" 
                            Text='<%# Eval("message") %>' />
                    </td>
                </tr>
            </table>
            --------------------------------------<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:electionConnectionString %>" 
        SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
</p>
</asp:Content>
