<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Motel_BOoking.Customer.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div>

        <header style="width:50%; margin:auto; text-align:center">
            <h1>
                ROOMS
            </h1>
            <hr />
        </header>

        <br />

        <div class="row" style="width:50%; margin:auto" id="div_Rooms" runat="server">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" CssClass="col-md-2 control-label">ROOM NUMBER</asp:Label>
                    <div class="col-md-10">
                        <asp:DropDownList ID="dropRoomNumber" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="roomDS" DataTextField="room_num" DataValueField="room_num"></asp:DropDownList>
                        <asp:SqlDataSource ID="roomDS" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" style="padding-left:200px" id="div_calender" runat="server">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="200px" Width="300px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CellSpacing="5" DataKeyNames="room_num" DataSourceID="individualRoomDS" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="room_num" HeaderText="room_num" ReadOnly="True" SortExpression="room_num" />
                    <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                    <asp:BoundField DataField="no_of_beds" HeaderText="no_of_beds" SortExpression="no_of_beds" />
                    <asp:BoundField DataField="room_description" HeaderText="room_description" SortExpression="room_description" />
                    <asp:BoundField DataField="room_price" HeaderText="room_price" SortExpression="room_price" />
                    <asp:CheckBoxField DataField="room_status" HeaderText="room_status" SortExpression="room_status" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="individualRoomDS" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" SelectCommand="SELECT * FROM [Room] WHERE ([room_num] = @room_num)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropRoomNumber" Name="room_num" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

            <br />
            <asp:Button ID="btnBookRoom" runat="server" CssClass="btn btn-default btn-lrg" Text="BOOK" OnClick="btnBookRoom_Click" />
            <br />

        </div>

        <div id="div_select_date" runat="server" visible="false">
            <br />
            <div class="form-horizontal">
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

                <br />

                <div>
                    <asp:Button ID="btnContinue" runat="server" CssClass="btn btn-default" Text="Continue" OnClick="btnContinue_Click" /> &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click" />
                </div>
            </div>

        </div>

        <div id="div_Payment_start" runat="server" visible="false" class="row">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label runat="server" CssClass="col-md-2 control-label">TOTAL</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="txtTotal" CssClass="form-control" TextMode="Email" Enabled="false" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success" Text="CONFRIM" OnClick="btnLogin_Click" /> &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="CANCEL" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>

    </div>

    <br />
    <br />
    <br />
    <br />

</asp:Content>
