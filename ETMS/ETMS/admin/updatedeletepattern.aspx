<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="updatedeletepattern.aspx.cs" Inherits="ETMS.admin.updatedeletepattern" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 331px;
    }
    .auto-style2 {
        font-size: xx-large;
        color: #FFFFFF;
    }
    .auto-style3 {
        text-align: center;
    }
    .auto-style4 {
        width: 100%;
        height: 78px;
    }
    .auto-style5 {
        width: 425px;
    }
    .auto-style6 {
        font-size: large;
    }
    .auto-style7 {
        text-align: left;
    }
    .auto-style8 {
        color: #FFFFFF;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3"><strong class="auto-style2">
            <br />
            EDIT OR DELETE PATTERN<br />
            <br />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1" ForeColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="654px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                    <asp:BoundField DataField="v_id" HeaderText="v_id" SortExpression="v_id" />
                    <asp:BoundField DataField="amt" HeaderText="amt" SortExpression="amt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETMSConnectionString9 %>" SelectCommand="SELECT [pid], [pname], [img], [v_id], [amt] FROM [pattern]"></asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style5">
                        <br />
                        <strong class="auto-style6">PATTERN NAME</strong></td>
                    <td class="auto-style7">
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="236px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
                        <strong class="auto-style8">IMAGE</strong><br />
                    </td>
                    <td class="auto-style7">
                        <br />
                        <asp:Image ID="Image1" runat="server" Width="191px" />
                        <br />
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="31px" Width="258px" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
                        <strong class="auto-style6">AMOUNT</strong><br />
                    </td>
                    <td class="auto-style7">
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <br />
                        <strong class="auto-style6">VEHICLE CATEGORY</strong><br />
                    </td>
                    <td class="auto-style7">
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Height="36px" OnClick="Button1_Click" Text="UPDATE" Width="95px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BorderStyle="Solid" Height="36px" OnClick="Button2_Click" Text="DELETE" Width="95px" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>
