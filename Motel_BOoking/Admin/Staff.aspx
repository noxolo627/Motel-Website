<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Motel_BOoking.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <div>

        <header style="width:50%; margin:auto; text-align:center">
            <h1>
                STAFF
            </h1>
            <hr />
        </header>

        <br />

        <div style="padding-bottom:30px; padding-left:50px">
            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-default" Text="SEARCH" OnClick="btnSearch_Click" />
        </div>

        <div id="div_view" runat="server" visible="true" style="padding-left:50px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="staff_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="staff_id" HeaderText="staff_id" InsertVisible="False" ReadOnly="True" SortExpression="staff_id" />
                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
        </div>

        <div id="div_search" runat="server" visible="false" style="padding-left:50px; padding-top:50px">
            <div class="col-md-8">
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label runat="server" CssClass="col-md-2 control-label">EMAIL</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button ID="btnSearch2" runat="server" CssClass="btn btn-default" Text="SEARCH" OnClick="LogIn" /> &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="CANCEL" OnClick="btnCancel_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="div_result" runat="server" visible="false" style="padding-left:50px;">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="400px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="staff_id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupWst29ConnectionString %>" DeleteCommand="DELETE FROM [Staff] WHERE [staff_id] = @original_staff_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [gender] = @original_gender AND [phone] = @original_phone AND [email] = @original_email AND [job_title] = @original_job_title AND [address] = @original_address AND [password] = @original_password" InsertCommand="INSERT INTO [Staff] ([first_name], [last_name], [gender], [phone], [email], [job_title], [address], [password]) VALUES (@first_name, @last_name, @gender, @phone, @email, @job_title, @address, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Staff] WHERE ([email] = @email)" UpdateCommand="UPDATE [Staff] SET [first_name] = @first_name, [last_name] = @last_name, [gender] = @gender, [phone] = @phone, [email] = @email, [job_title] = @job_title, [address] = @address, [password] = @password WHERE [staff_id] = @original_staff_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [gender] = @original_gender AND [phone] = @original_phone AND [email] = @original_email AND [job_title] = @original_job_title AND [address] = @original_address AND [password] = @original_password">
                <DeleteParameters>
                    <asp:Parameter Name="original_staff_id" Type="Int32" />
                    <asp:Parameter Name="original_first_name" Type="String" />
                    <asp:Parameter Name="original_last_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_job_title" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
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
                    <asp:ControlParameter ControlID="txtEmail" Name="email" PropertyName="Text" Type="String" />
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
                    <asp:Parameter Name="original_staff_id" Type="Int32" />
                    <asp:Parameter Name="original_first_name" Type="String" />
                    <asp:Parameter Name="original_last_name" Type="String" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_job_title" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>

</asp:Content>
