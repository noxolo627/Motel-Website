<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Motel_BOoking.Admin.WebForm4" %>
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

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="room_num" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="600px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="room_num" HeaderText="room_num" ReadOnly="True" SortExpression="room_num" />
                    <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                    <asp:BoundField DataField="no_of_beds" HeaderText="no_of_beds" SortExpression="no_of_beds" />
                    <asp:BoundField DataField="room_description" HeaderText="room_description" SortExpression="room_description" />
                    <asp:BoundField DataField="room_price" HeaderText="room_price" SortExpression="room_price" />
                    <asp:CheckBoxField DataField="room_status" HeaderText="room_status" SortExpression="room_status" />
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" DeleteCommand="DELETE FROM [Room] WHERE [room_num] = @original_room_num AND [room_type] = @original_room_type AND [no_of_beds] = @original_no_of_beds AND (([room_description] = @original_room_description) OR ([room_description] IS NULL AND @original_room_description IS NULL)) AND [room_price] = @original_room_price AND [room_status] = @original_room_status" InsertCommand="INSERT INTO [Room] ([room_num], [room_type], [no_of_beds], [room_description], [room_price], [room_status]) VALUES (@room_num, @room_type, @no_of_beds, @room_description, @room_price, @room_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Room]" UpdateCommand="UPDATE [Room] SET [room_type] = @room_type, [no_of_beds] = @no_of_beds, [room_description] = @room_description, [room_price] = @room_price, [room_status] = @room_status WHERE [room_num] = @original_room_num AND [room_type] = @original_room_type AND [no_of_beds] = @original_no_of_beds AND (([room_description] = @original_room_description) OR ([room_description] IS NULL AND @original_room_description IS NULL)) AND [room_price] = @original_room_price AND [room_status] = @original_room_status">
                <DeleteParameters>
                    <asp:Parameter Name="original_room_num" Type="Int32" />
                    <asp:Parameter Name="original_room_type" Type="String" />
                    <asp:Parameter Name="original_no_of_beds" Type="Int32" />
                    <asp:Parameter Name="original_room_description" Type="String" />
                    <asp:Parameter Name="original_room_price" Type="Decimal" />
                    <asp:Parameter Name="original_room_status" Type="Boolean" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="room_num" Type="Int32" />
                    <asp:Parameter Name="room_type" Type="String" />
                    <asp:Parameter Name="no_of_beds" Type="Int32" />
                    <asp:Parameter Name="room_description" Type="String" />
                    <asp:Parameter Name="room_price" Type="Decimal" />
                    <asp:Parameter Name="room_status" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="room_type" Type="String" />
                    <asp:Parameter Name="no_of_beds" Type="Int32" />
                    <asp:Parameter Name="room_description" Type="String" />
                    <asp:Parameter Name="room_price" Type="Decimal" />
                    <asp:Parameter Name="room_status" Type="Boolean" />
                    <asp:Parameter Name="original_room_num" Type="Int32" />
                    <asp:Parameter Name="original_room_type" Type="String" />
                    <asp:Parameter Name="original_no_of_beds" Type="Int32" />
                    <asp:Parameter Name="original_room_description" Type="String" />
                    <asp:Parameter Name="original_room_price" Type="Decimal" />
                    <asp:Parameter Name="original_room_status" Type="Boolean" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>

    </div>

    <br />
    <br />

</asp:Content>
