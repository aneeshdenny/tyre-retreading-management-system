<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="deletecust.aspx.cs" Inherits="ETMS.admin.deletecust" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        color: #FFFFFF;
        font-size: x-large;
    }
    .auto-style3 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3"><strong class="auto-style2">
            <br />
            DELETE CUSTOMER<br />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="584px" ForeColor="White">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="cname" HeaderText="NAME" SortExpression="cname" />
                    <asp:BoundField DataField="city" HeaderText="CITY" SortExpression="city" />
                    <asp:BoundField DataField="email" HeaderText="EMAIL" SortExpression="email" />
                    <asp:BoundField DataField="mob" HeaderText="MOBILE" SortExpression="mob" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETMSConnectionString5 %>" SelectCommand="SELECT [cname], [city], [email], [mob] FROM [customer]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="NAME:   "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="216px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="36px" OnClick="Button1_Click" Text="DELETE" Width="87px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>
