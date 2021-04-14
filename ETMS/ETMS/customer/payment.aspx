<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="ETMS.customer.payment" %>
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
            width: 454px;
            text-align: center;
        }
        .auto-style5 {
            font-size: large;
            text-align: justify;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">
                <br />
                <strong class="auto-style3">PAYMENT....<br />
                </strong><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <strong class="auto-style5">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AMOUNT<br />
                </strong><br />
            </td>
            <td>
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="White" Height="39px" Width="92px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong class="auto-style5">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ACCOUNT NUMBER<br />
                </strong></td>
            <td>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="225px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style8"><strong class="auto-style7">&nbsp;IFSC CODE</strong></span><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="223px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <br />
                <strong class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ACCOUNT HOLDER NAME<br />
                </strong><br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="223px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="38px" OnClick="Button1_Click" Text="PAY..." Width="136px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
