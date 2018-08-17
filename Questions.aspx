<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="WebApplication1.Questions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: center;
            }
        .style5
        {
            text-align: center;
            width: 595px;
            font-size: large;
        }
        .style6
        {
            text-align: center;
            height: 19px;
        }
        .style8
        {
            text-align: left;
            height: 19px;
            font-size: medium;
        }
        .style10
        {
            text-align: left;
            height: 19px;
        }
        .style11
        {
            text-align: left;
        }
        .style12
        {
            font-size: large;
        }
        .style13
        {
            text-align: center;
            height: 19px;
            width: 595px;
        }
        .style14
        {
            text-align: center;
            width: 595px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        Questions</p>
    <table align="center" class="style2" style="width: 60%; height: 50%">
        <tr>
            <td colspan="2">
                New Question</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Title</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="269px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                &nbsp;</td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr class="style12">
            <td class="style4" colspan="2">
                Nominees</td>
            <td class="style4">
                Description</td>
            <td class="style4">
                Upload Image</td>
        </tr>
        <tr>
            <td class="style13">
                1.</td>
            <td class="style10">
                <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox6" runat="server" Height="80px" TextMode="MultiLine" 
                    Width="230px"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style14">
                2.</td>
            <td class="style11">
                <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox7" runat="server" Height="80px" TextMode="MultiLine" 
                    Width="230px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style14">
                3.</td>
            <td class="style11">
                <asp:TextBox ID="TextBox4" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox8" runat="server" Height="80px" TextMode="MultiLine" 
                    Width="230px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style14">
                4.</td>
            <td class="style11">
                <asp:TextBox ID="TextBox5" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox9" runat="server" Height="80px" TextMode="MultiLine" 
                    Width="230px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload4" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="4">
                <asp:Button ID="Button1" runat="server" Text="Add Question" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <br />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text='<%# Eval("question") %>' CommandArgument='<%# Eval("qid") %>' />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:electionConnectionString %>" 
        SelectCommand="SELECT * FROM [questions] WHERE (([organization] = @organization) AND ([ename] = @ename))">
        <SelectParameters>
            <asp:SessionParameter Name="organization" SessionField="org" Type="String" />
            <asp:SessionParameter Name="ename" SessionField="en" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    
</asp:Content>
