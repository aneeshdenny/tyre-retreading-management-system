<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="totalbookings.aspx.cs" Inherits="ETMS.admin.totalbookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellSpacing="6" DataKeyNames="billno" DataSourceID="SqlDataSource1" ForeColor="White" GridLines="Horizontal" Height="146px" HorizontalAlign="Justify" Width="400px" CssClass="auto-style1">
    <Columns>
        <asp:BoundField DataField="billno" HeaderText="Billno" InsertVisible="False" ReadOnly="True" SortExpression="billno" />
        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
        <asp:BoundField DataField="sid" HeaderText="Sales Id" SortExpression="sid" />
        <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
    </Columns>
    <RowStyle BorderStyle="Solid" />
</asp:GridView>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETMSConnectionString9 %>" SelectCommand="SELECT * FROM [bill]"></asp:SqlDataSource>
</asp:Content>
