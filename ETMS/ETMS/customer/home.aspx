<%@ Page Title="" Language="C#" MasterPageFile="~/customer/customer.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ETMS.customer.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
        width: 100%;
    }
    .auto-style5 {
        width: 185px;
        text-align: center;
    }
    .auto-style6 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="auto-style2"><strong>VEHICLE CATEOGORY:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" BorderStyle="Solid" Height="34px" OnClick="Button2_Click" Text="Search" Width="114px" />
<br />
<asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
    <ItemTemplate>
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <br />
                    <strong class="auto-style2">PATTERN</strong><br /></td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="204px" ImageUrl='<%# Eval("img","~/patternpics/{0}") %>' Width="233px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <br />
                    <strong class="auto-style2">PATTERN NAME</strong><br /></td>
                <td class="auto-style6">
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Text='<%# Eval("pname") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <br />
                    <strong class="auto-style2">COST</strong><br /></td>
                <td class="auto-style6">
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="White" Text='<%# Eval("amt") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("pid") %>' Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <br />
                    <asp:Button ID="Button3" runat="server" Height="38px" OnClick="Button3_Click" Text="BOOK NOW" Width="112px" BorderStyle="Solid" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<br />
<br />
<br />
</asp:Content>
