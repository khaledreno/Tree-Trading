<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanelUsers.aspx.cs" Inherits="Tree_Trading.AdminPanelUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
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
    &nbsp; Password&nbsp; <asp:TextBox ID="PasswordField" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm Password&nbsp;
        <asp:TextBox ID="Password2Field" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Userrole*
        <asp:DropDownList ID="RoleDropDownList" runat="server" Width="117px">
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>Business</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="ActivCheckBox" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text=" Active or Inactive user" />
</p>
    <p style="margin-left: 80px">
        <asp:Label ID="Label0" runat="server" Visible="false"></asp:Label>
</p>
<p style="margin-left: 80px">
    <asp:Button ID="Button1" runat="server" OnClick="Insert_User" Text="Insert " Width="1058px" />
</p>
    <p>
        &nbsp;&nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" Width="424px">
        </asp:GridView>
</p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
</p>
<p>
        &nbsp;
        <asp:TextBox ID="SearchBox" runat="server" TextMode="Number" Width="255px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SearchBtn" runat="server" OnClick="SearchUserId" Text="Search with ID" />
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
