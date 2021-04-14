<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="ETMS.admin.addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
            text-align: center;
            width: 416px;
        }
        .auto-style5 {
            color: #FFFFFF;
        }
        .auto-style6 {
            font-size: large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2"><strong class="auto-style2">
                <br />
                ADD CATEGORY<br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4"><strong class="auto-style5">
                <br />
                VEHICLE CATEGORY<br />
                </strong></td>
            <td>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="228px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="ENTER" Width="101px" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
