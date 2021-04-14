<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="staffreg.aspx.cs" Inherits="ETMS.admin.staffreg" %>
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
        text-align: center;
        width: 439px;
    }
    .auto-style5 {
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2"><strong class="auto-style3">
            <br />
            ADD STAFF<br />
            <br />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>NAME<br />
            </strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>DESIGNATION<br />
            </strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>GENDER<br />
            </strong></span><br />
        </td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="White">
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <strong class="auto-style5">EMAIL<br />
            </strong><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>AGE<br />
            </strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>MOBILE NUMBER<br />
            </strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Height="27px" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>USER NAME<br />
            </strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox6" runat="server" Height="27px" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <br />
            <span class="auto-style5"><strong>PASSWORD<br />
            </strong></span><br />
        </td>
        <td>
            <br />
            <asp:TextBox ID="TextBox7" runat="server" Height="27px" Width="237px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <br />
            <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="37px" Text="SAVE" Width="99px" OnClick="Button1_Click" />
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>
