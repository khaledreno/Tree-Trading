<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanelUsers.aspx.cs" Inherits="Tree_Trading.AdminPanelUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" SortExpression="USER_ID" />
            <asp:BoundField DataField="FULLNAME" HeaderText="FULLNAME" SortExpression="FULLNAME" />
            <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="USERROLE" HeaderText="USERROLE" SortExpression="USERROLE" />
            <asp:BoundField DataField="ACTIVEFLAG" HeaderText="ACTIVEFLAG" SortExpression="ACTIVEFLAG" />
            <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;USERS&quot;"></asp:SqlDataSource>
</p>
<p>
</p>
</asp:Content>
