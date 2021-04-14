<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staff.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="ETMS.staff.welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            text-align: center;
            width: 424px;
        }
        .auto-style5 {
            text-align: center;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2"><strong class="auto-style3">
                <br />
                ADD PATTERN<br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                PATTERN NAME<br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="234px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                IMAGE<br />
            </td>
            <td>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="240px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                AMOUNT<br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="234px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                VECHICLE CATEGORY<br />
            </td>
            <td>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="ENTER" Width="133px" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
