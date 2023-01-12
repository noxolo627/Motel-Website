<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="Motel_BOoking.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div class="container">

        <header style="width:50%; margin:auto; text-align:center">
            <h1>
                BOOKINGS
            </h1>
            <hr />
        </header>

        <br />

        <div style="padding-left:50px">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="booking_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="booking_id" HeaderText="booking_id" InsertVisible="False" ReadOnly="True" SortExpression="booking_id" />
                    <asp:BoundField DataField="cust_id" HeaderText="cust_id" SortExpression="cust_id" />
                    <asp:BoundField DataField="staff_id" HeaderText="staff_id" SortExpression="staff_id" />
                    <asp:BoundField DataField="room_num" HeaderText="room_num" SortExpression="room_num" />
                    <asp:BoundField DataField="booking_type" HeaderText="booking_type" SortExpression="booking_type" />
                    <asp:BoundField DataField="total_cost" HeaderText="total_cost" SortExpression="total_cost" />
                    <asp:BoundField DataField="payment_date" HeaderText="payment_date" SortExpression="payment_date" />
                    <asp:BoundField DataField="check_in" HeaderText="check_in" SortExpression="check_in" />
                    <asp:BoundField DataField="check_out" HeaderText="check_out" SortExpression="check_out" />
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" SelectCommand="SELECT * FROM [Booking]"></asp:SqlDataSource>

        </div>

    </div>

    <br />
    <br />

</asp:Content>
