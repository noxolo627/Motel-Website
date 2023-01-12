<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Motel_BOoking.Customer.WebForm6" %>
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

        <div style="width:60%; margin:auto">

            <asp:DetailsView ID="DetailsView1" runat="server" Height="300px" Width="350px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="cust_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="cust_id" HeaderText="cust_id" InsertVisible="False" ReadOnly="True" SortExpression="cust_id" />
                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [cust_id] = @original_cust_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [gender] = @original_gender AND [phone] = @original_phone AND [email] = @original_email AND [address] = @original_address AND [password] = @original_password" InsertCommand="INSERT INTO [Customer] ([first_name], [last_name], [gender], [phone], [email], [address], [password]) VALUES (@first_name, @last_name, @gender, @phone, @email, @address, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer] WHERE ([cust_id] = @cust_id)" UpdateCommand="UPDATE [Customer] SET [first_name] = @first_name, [last_name] = @last_name, [gender] = @gender, [phone] = @phone, [email] = @email, [address] = @address, [password] = @password WHERE [cust_id] = @original_cust_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [gender] = @original_gender AND [phone] = @original_phone AND [email] = @original_email AND [address] = @original_address AND [password] = @original_password">
                <DeleteParameters>
                    <asp:Parameter Name="original_cust_id" Type="Int32" />
                    <asp:Parameter Name="original_first_name" Type="String" />
                    <asp:Parameter Name="original_last_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="cust_id" SessionField="id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="original_cust_id" Type="Int32" />
                    <asp:Parameter Name="original_first_name" Type="String" />
                    <asp:Parameter Name="original_last_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>

    </div>

</asp:Content>
