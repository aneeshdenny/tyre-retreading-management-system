<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer.Master" AutoEventWireup="true" CodeBehind="customeredit.aspx.cs" Inherits="ETMS.customer.customeredit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style4 {
            width: 388px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
        .auto-style9 {
            color: #FFCCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5" colspan="2"><strong class="auto-style3">
                <br />
                EDIT PROFILE<br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <strong class="auto-style6">NAME</strong><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <span class="auto-style7"><strong class="auto-style8">ADDRESS</strong></span><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <strong class="auto-style6">CITY</strong><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <span class="auto-style7"><strong class="auto-style8">P</strong></span><span class="auto-style6"><strong>IN</strong></span><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <span class="auto-style7"><strong class="auto-style9">E</strong></span><span class="auto-style6"><strong class="auto-style9">MAIL</strong></span><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <span class="auto-style7"><strong>M</strong></span><span class="auto-style6"><strong>OBILE NUMBER</strong></span><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="227px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="35px" OnClick="Button1_Click" Text="SAVE" Width="108px" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
