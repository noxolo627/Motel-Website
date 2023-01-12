<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="Motel_BOoking.Customer.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div>

        <header style="width:50%; margin:auto; text-align:center">
            <h1>
                BOOKINGS
            </h1>
            <hr />
        </header>

        <div class="container">

            <div class="col-md-8">
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-md-2 control-label">ROOM</asp:Label>
                        <div class="col-md-10">
                            <asp:DropDownList ID="dropRoomNumber" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    

</asp:Content>
