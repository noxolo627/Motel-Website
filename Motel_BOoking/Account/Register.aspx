<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Motel_BOoking.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <br />
    <br />

    <div class="container">

        <header>
            <h1 style="text-align:center">
                REGISTER
            </h1>
            <hr />
        </header>

        <div class="form-horizontal">
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">First Name</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtFName" CssClass="form-control" TextMode="SingleLine" required="true" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Last Name</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtLName" CssClass="form-control" TextMode="SingleLine" required="true" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Phone</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" TextMode="Number" required="true" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txEmail" CssClass="form-control" TextMode="Email" required="true" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Confrim Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtEmail2" CssClass="form-control" TextMode="Email" required="true" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Gender</asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem Selected="True" Value="MALE" Text="MALE" />
                        <asp:ListItem Value="FEMALE" Text="FEMALE" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Address</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" TextMode="MultiLine" required="true" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">Password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" required="true"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" CssClass="col-md-2 control-label">COnfirm Password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtPassword2" CssClass="form-control" TextMode="Password" required="true"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
                </div>
            </div>
        </div>

    </div>


    
</asp:Content>
