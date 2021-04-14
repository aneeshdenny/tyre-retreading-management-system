<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="ETMS.customer.welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            text-align: center;
            width: 442px;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">
                <br />
                <strong class="auto-style3">BOOK NOW....</strong><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <strong class="auto-style5">SELECT TREADING</strong><br />
            </td>
            <td>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <strong class="auto-style5">QUANTITY</strong><br />
            </td>
            <td>
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="Black">
                    <asp:ListItem>Select quantity</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="34px" OnClick="Button1_Click" Text="BOOK NOW" Width="113px" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
