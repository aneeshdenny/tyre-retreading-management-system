<%@ Page Title="" Language="C#" MasterPageFile="~/ETMS.Master" AutoEventWireup="true" CodeBehind="cust_reg.aspx.cs" Inherits="ETMS.WebForm1" %>
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
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style6 {
            text-align: center;
            width: 376px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            text-align: center;
            width: 376px;
            height: 66px;
        }
        .auto-style10 {
            text-align: left;
            height: 66px;
        }
        .auto-style11 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2"><strong class="auto-style4">
                <br class="auto-style3" />
                </strong><span class="auto-style3"><strong class="auto-style4">CUSTOMER REGISTRATION</strong></span><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <br />
                <strong class="auto-style5">NAME</strong><br />
            </td>
            <td class="auto-style7">
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <br />
                <strong class="auto-style5">ADDRESS</strong><br />
            </td>
            <td class="auto-style7">
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <br />
                <span class="auto-style8"><strong class="auto-style4">CITY</strong></span><br />
            </td>
            <td class="auto-style7">
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <br />
                <strong><span class="auto-style5">PIN</span></strong><br />
            </td>
            <td class="auto-style7">
                <br />
                <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <br />
                <strong><span class="auto-style5">EMAIL</span></strong><br />
            </td>
            <td class="auto-style7">
                <br />
                <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <br />
                <strong><span class="auto-style5">MOBILE NUMBER</span></strong><br />
            </td>
            <td class="auto-style10">
                <br />
                <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <br />
                <span class="auto-style8"><strong class="auto-style4">USER NAME</strong></span><br />
            </td>
            <td class="auto-style10">
                <br />
                <asp:TextBox ID="TextBox7" runat="server" Height="26px" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <br />
                <span class="auto-style8"><strong class="auto-style4">PASSWORD</strong></span><br />
            </td>
            <td class="auto-style10">
                <br />
                <asp:TextBox ID="TextBox8" runat="server" Height="26px" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="Solid" CssClass="auto-style11" ForeColor="Black" Height="37px" OnClick="Button1_Click" Text="SAVE" Width="183px" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
