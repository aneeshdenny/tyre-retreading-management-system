<%@ Page Title="" Language="C#" MasterPageFile="~/ETMS.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ETMS.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
            width: 426px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2"><strong><span class="auto-style3">
                <br />
                LOGIN PAGE<br />
                </span></strong></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
                <strong class="auto-style4">USER NAME</strong><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
                <strong class="auto-style4">PASSWORD</strong><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" TextMode="Password" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="LOGIN" Width="121px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="White" BorderStyle="Solid" ForeColor="White" NavigateUrl="~/cust_reg.aspx">SIGN UP</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
