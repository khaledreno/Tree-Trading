<%@ Page Title="Spot Deals Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SpotDealsPage.aspx.cs" Inherits="Tree_Trading.SpotDealsPage" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>&nbsp;</p>

     &nbsp;  <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

       <asp:TextBox ID="TextBox1" runat="server" Height="35px"  Width="270px"></asp:TextBox>

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;   <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
       &nbsp; &nbsp;

    
        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="270px" Enabled="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Deal Id"></asp:Label>
            <br />
            <br />
    <p style="direction: ltr">

       &nbsp; <asp:Label runat="server" Text="Amount 1" ID="ctl06"></asp:Label>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp
<asp:TextBox ID="Amount1TextBox" runat="server" Height="35px"  Width="270px" OnTextChanged="Amount1TextBox_TextChanged"></asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Amount 2"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="Amoun2TextBox" runat="server" Height="35px" Width="270px" Enabled="False" OnTextChanged="Amoun2TextBox_TextChanged"></asp:TextBox>

    </p>
    <p style="direction: ltr">&nbsp;CCY1&nbsp;

        <asp:DropDownList runat="server"  style="margin-top: 19px" Height="35px" Width="328px" ID="DropList1">
            <asp:ListItem>EGP</asp:ListItem>
            <asp:ListItem>USD</asp:ListItem>
           <asp:ListItem>SAR</asp:ListItem>
         <asp:ListItem>EUR</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CCY2&nbsp;&nbsp;

        <asp:DropDownList runat="server"  style="margin-top: 19px" Height="35px" Width="270px" ID="DropList2" OnSelectedIndexChanged="DropList1_SelectedIndexChanged">
            <asp:ListItem>EGP</asp:ListItem>
            <asp:ListItem>USD</asp:ListItem>
            <asp:ListItem>SAR</asp:ListItem>
            <asp:ListItem>EUR</asp:ListItem>
            </asp:DropDownList>
        </p>

            <p style="direction: ltr">&nbsp;</p>
            <p style="direction: ltr">&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Trade time"></asp:Label>
&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox5" runat="server" Width="270px" Enabled="False" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        </p>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        &nbsp;<p style="direction: ltr">&nbsp;
    <asp:Label runat="server" Text="Rate for demo" ID="Label5"></asp:Label>&nbsp;
                <asp:Label ID="PriceLabel" runat="server" Text="PriceLabel"></asp:Label>
            </p>
    <p style="direction: ltr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="273px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" Width="317px" />
</p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </p>
    <p>&nbsp;</p>
    <p>&nbsp;<asp:Button runat="server" Text="Save prices " OnClick="Unnamed1_Click" ID="Btn2Prices"></asp:Button>
        <asp:Button runat="server" Text="Button" OnClick="Page_Load"></asp:Button></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
    </p>

</asp:Content>
