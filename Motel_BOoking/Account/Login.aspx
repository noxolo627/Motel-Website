<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Motel_BOoking.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <br />
    <br />

    <div class="row">

        <div class="col-md-8">
            <section>
                <div class="form-horizontal">
                    <h4 style="text-align:center">Enter your email and password to log in</h4>
                    <hr />
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-md-2 control-label">EMAIL</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-md-2 control-label">PASSWORD</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control" required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-default" Text="LOGIN" OnClick="LogIn" />
                        </div>
                    </div>
                    <p>
                        <a href="../Register_User.aspx">REGISTER AS A NEW USER</a>
                    </p>
                </div>
            </section>
        </div>

        <div class="col-md-8">

        </div>

    </div>
</asp:Content>
