<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staff.Master" AutoEventWireup="true" CodeBehind="bookings.aspx.cs" Inherits="ETMS.staff.bookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
        color: #000000;
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="SqlDataSource1" Height="204px" Width="1113px" BackColor="White" BorderColor="White" BorderStyle="Solid" ForeColor="#333333" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="cname" HeaderText="Name" SortExpression="cname" />
                <asp:BoundField DataField="addr" HeaderText="Address" SortExpression="addr" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="pin" HeaderText="PinCode" SortExpression="pin" />
                <asp:BoundField DataField="mob" HeaderText="Mobile" SortExpression="mob" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="pname" HeaderText="Pattern Name" SortExpression="pname" />
                <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
                <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                <asp:BoundField DataField="amt1" HeaderText="Total Amount" SortExpression="amt1" />
                <asp:BoundField DataField="cname1" HeaderText="Category" SortExpression="cname1" />
                <asp:TemplateField HeaderText="Pattern ">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="111px" ImageUrl='<%# Eval("img","~/patternpics/{0}") %>' Width="111px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ETMSConnectionString9 %>" SelectCommand="select customer.cname,customer.addr,customer.city,customer.pin,customer.mob,customer.email,pattern.pname,pattern.img,pattern.amt,sales.qty,sales.amt,category.cname from 
(((sales inner join customer on customer.c_id=sales.cid)
 inner join pattern on sales.pid=pattern.pid)
 inner join category on category.cid=sales.cat_id);"></asp:SqlDataSource>
    </div>
</asp:Content>
