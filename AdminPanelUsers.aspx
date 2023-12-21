<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanelUsers.aspx.cs" Inherits="Tree_Trading.AdminPanelUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</p>
    <p style="margin-left: 80px">
    <br />
    &nbsp;Full Name&nbsp;
        <asp:TextBox ID="FullnameField" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username&nbsp;
        <asp:TextBox ID="UsernameField" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email&nbsp;
        <asp:TextBox ID="EmailField" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p style="margin-left: 80px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp; <asp:TextBox ID="PasswordField" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Password
        <asp:TextBox ID="Password2Field" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Userrole*
        <asp:DropDownList ID="RoleDropDownList" runat="server">
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>Business</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="ActivCheckBox" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
</p>
<p style="margin-left: 80px">
    <asp:Button ID="Button1" runat="server" OnClick="Insert_User" Text="Insert " Width="1058px" />
</p>
    <p>
        &nbsp;&nbsp; &nbsp;<asp:GridView ID="GridView2" runat="server" Width="424px">
        </asp:GridView>
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
</p>
<p>
        <asp:TextBox ID="SearchBox" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SearchBtn" runat="server" OnClick="SearchUserId" Text="Search" />
</p>
<p>
        &nbsp;</p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;USERS&quot;"></asp:SqlDataSource>
</p>
<p>
</p>
</asp:Content>
