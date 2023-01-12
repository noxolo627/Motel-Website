﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="Motel_BOoking.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div class="container">

        <header style="width:50%; margin:auto; text-align:center">
            <h1>
                PAYMENTS
            </h1>
            <hr />
        </header>

        <br />

        <div style="padding-left:50px">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="pay_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="700px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="pay_id" HeaderText="pay_id" InsertVisible="False" ReadOnly="True" SortExpression="pay_id" />
                    <asp:BoundField DataField="booking_id" HeaderText="booking_id" SortExpression="booking_id" />
                    <asp:BoundField DataField="room_num" HeaderText="room_num" SortExpression="room_num" />
                    <asp:BoundField DataField="cust_id" HeaderText="cust_id" SortExpression="cust_id" />
                    <asp:BoundField DataField="mop" HeaderText="mop" SortExpression="mop" />
                    <asp:BoundField DataField="pay_date" HeaderText="pay_date" SortExpression="pay_date" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" SelectCommand="SELECT * FROM [Payment]"></asp:SqlDataSource>

        </div>

    </div>

    <br />
    <br />

</asp:Content>
