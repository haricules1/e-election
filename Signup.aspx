<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            width: 80%;
            height: 80%;
        }
        .style3
        {
            width: 375px;
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
        <br />
        <table align="center" class="style2">
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    Name</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    Organization</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    Phone</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    Email</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    Password</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    Confirm Password</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Sign Up" />
                    &nbsp;
                    </td>
            </tr>
        </table>
    </p>
    <br />
    <br />
</asp:Content>
