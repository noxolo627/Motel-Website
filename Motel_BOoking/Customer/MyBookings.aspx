<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="MyBookings.aspx.cs" Inherits="Motel_BOoking.Customer.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div>

        <header style="width:50%; margin:auto; text-align:center">
            <h1>
                MY BOOKINGS
            </h1>
            <hr />
        </header>

        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="booking_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" SelectCommand="SELECT * FROM [Booking] WHERE ([cust_id] = @cust_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="cust_id" SessionField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
            <br />

            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="300px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="booking_id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="booking_id" HeaderText="booking_id" InsertVisible="False" ReadOnly="True" SortExpression="booking_id" />
                    <asp:BoundField DataField="cust_id" HeaderText="cust_id" SortExpression="cust_id" />
                    <asp:BoundField DataField="staff_id" HeaderText="staff_id" SortExpression="staff_id" />
                    <asp:BoundField DataField="room_num" HeaderText="room_num" SortExpression="room_num" />
                    <asp:BoundField DataField="booking_type" HeaderText="booking_type" SortExpression="booking_type" />
                    <asp:BoundField DataField="total_cost" HeaderText="total_cost" SortExpression="total_cost" />
                    <asp:BoundField DataField="payment_date" HeaderText="payment_date" SortExpression="payment_date" />
                    <asp:BoundField DataField="check_in" HeaderText="check_in" SortExpression="check_in" />
                    <asp:BoundField DataField="check_out" HeaderText="check_out" SortExpression="check_out" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" SelectCommand="SELECT * FROM [Booking] WHERE ([booking_id] = @booking_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="booking_id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

            <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="UPDATE" OnClick="Button1_Click" /> &nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="DELETE" OnClick="Button2_Click" />


        </div>

        <div id="div_update" runat="server" visible="false" class="container">
            <br />
            <div class="form-group" style="width:100%">
                <div style="float:left; width:49%">
                    <asp:Label runat="server" CssClass="col-md-2 control-label">CHECK IN</asp:Label><br />
                    <asp:Calendar ID="calCheckIN" runat="server"  Height="300px" Width="400px" OnSelectionChanged="calCheckIN_SelectionChanged" ></asp:Calendar>
                </div>
                <div style="float:left; width:49%">
                    <asp:Label runat="server" CssClass="col-md-2 control-label">CHECK OUT</asp:Label><br />
                    <asp:Calendar ID="calCheckOut" runat="server" Height="300px" Width="400px" OnSelectionChanged="calCheckOut_SelectionChanged" ></asp:Calendar>
                </div>
                <div style="float:left; width:2%">
                    &nbsp
                </div>
            </div>
            <div>
                <asp:Button ID="btnContinue" runat="server" CssClass="btn btn-default" Text="UPDATE" OnClick="btnContinue_Click" /> &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click" />
            </div>
        </div>

    </div>

</asp:Content>
