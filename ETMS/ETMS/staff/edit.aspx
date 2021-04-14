<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staff.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="ETMS.staff.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        color: #FFFFFF;
        font-size: x-large;
    }
    .auto-style4 {
        text-align: center;
        width: 402px;
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
            <strong class="auto-style3">EDIT PROFILE</strong><br />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <strong class="auto-style5">NAME</strong><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="242px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>DESIGNATION</strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="242px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>EMAIL</strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="242px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>AGE</strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="242px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <strong class="auto-style5">MOBILE NUMBER</strong><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="242px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <br />
            <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="31px" Text="UPDATE" Width="116px" OnClick="Button1_Click" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>
