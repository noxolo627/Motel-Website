<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Motel_BOoking.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div>

        <header style="width:50%; margin:auto; text-align:center">
            <h1>
                PROFILE
            </h1>
            <hr />
        </header>

        <br />

        <div style="width:70%; margin:auto">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="400px" Width="400px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="staff_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="staff_id" HeaderText="staff_id" InsertVisible="False" ReadOnly="True" SortExpression="staff_id" />
                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" DeleteCommand="DELETE FROM [Staff] WHERE [staff_id] = @staff_id" InsertCommand="INSERT INTO [Staff] ([first_name], [last_name], [gender], [phone], [email], [job_title], [address], [password]) VALUES (@first_name, @last_name, @gender, @phone, @email, @job_title, @address, @password)" SelectCommand="SELECT * FROM [Staff] WHERE ([staff_id] = @staff_id)" UpdateCommand="UPDATE [Staff] SET [first_name] = @first_name, [last_name] = @last_name, [gender] = @gender, [phone] = @phone, [email] = @email, [job_title] = @job_title, [address] = @address, [password] = @password WHERE [staff_id] = @staff_id">
                <DeleteParameters>
                    <asp:Parameter Name="staff_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="staff_id" SessionField="id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="staff_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>

</asp:Content>
