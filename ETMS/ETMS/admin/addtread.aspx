<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addtread.aspx.cs" Inherits="ETMS.admin.addtread" %>
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
            font-size: xx-large;
        }
        .auto-style5 {
            text-align: center;
            width: 450px;
        }
        .auto-style6 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2"><strong class="auto-style3">
                <br />
                </strong><strong><span class="auto-style4">ADD TREADING TYPE</span></strong><strong class="auto-style3"><br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
                <strong class="auto-style6">TREAD TYPE</strong><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="221px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="38px" OnClick="Button1_Click" Text="ADD" Width="114px" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
