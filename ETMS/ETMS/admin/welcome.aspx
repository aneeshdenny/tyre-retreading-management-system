<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="ETMS.admin.welcome" %>
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
            font-size: xx-large;
        }
        .auto-style4 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
            width: 383px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            text-align: left;
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
            <td class="auto-style5"><strong class="auto-style4">
                <br />
                PATTERN NAME<br />
                </strong></td>
            <td>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong class="auto-style4">
                <br />
                IMAGE<br />
                </strong></td>
            <td>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="242px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong class="auto-style4">
                <br />
                AMOUNT<br />
                </strong></td>
            <td class="auto-style7">
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong class="auto-style4">
                <br />
                VEHICLE CATEGORY<br />
                </strong></td>
            <td class="auto-style7">
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style6" Height="31px" OnClick="Button1_Click" Text="SAVE" Width="91px" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
