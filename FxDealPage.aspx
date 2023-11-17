<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FxDealPage.aspx.cs" Inherits="Tree_Trading.FxDealPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
         &nbsp;  <asp:Label ID="DealidLabel" runat="server" Text="Deal ID"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

       <asp:TextBox ID="DealIdTextBox" runat="server" Height="35px"  Width="270px" Enabled="False"></asp:TextBox>

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;   <asp:Label ID="UserNameLabel" runat="server" Text="Username"></asp:Label>
       &nbsp; &nbsp;

    
        <asp:TextBox ID="UsernameTextBox" runat="server" Height="35px" Width="270px" Enabled="False" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="PortfolioLabel" runat="server" Text="Portfolio"></asp:Label>
            &nbsp;&nbsp;
         <asp:DropDownList ID="PortfolioDropDownList" runat="server" AutoPostBack="True">
             <asp:ListItem>Dervatives</asp:ListItem>
             <asp:ListItem>Money Market</asp:ListItem>
             <asp:ListItem>Islamic Products</asp:ListItem>
             <asp:ListItem>Treasury FX</asp:ListItem>

         </asp:DropDownList>

            <br />
            <br />
    <p style="direction: ltr">

       &nbsp;<asp:Label ID="Amoun1CCY1" runat="server" Text="Label"></asp:Label>
        &nbsp;<asp:Label runat="server" Text="Amount 1" ID="ctl06"></asp:Label>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp

<asp:TextBox ID="Amount1TextBox1" runat="server" Height="35px"  Width="270px" OnTextChanged="Amount1TextBox_TextChanged" AutoPostBack="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Label ID="Amoun2CCY1" runat="server" Text="Label"></asp:Label>
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Amount 2"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="Amount2TextBox1" runat="server" Height="35px" Width="270px" OnTextChanged="Amoun2TextBox_TextChanged" AutoPostBack="True"></asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="SpotRateLabel" runat="server" Text="Spot Rate"></asp:Label>
&nbsp;
        <asp:TextBox ID="SpotRateTextBox" runat="server" Width="55px" AutoPostBack="True" OnTextChanged="SpotRateChange"></asp:TextBox>

    </p>
       &nbsp;<asp:Label ID="Amoun1CCY2" runat="server" Text="Label"></asp:Label>
         &nbsp;<asp:Label runat="server" Text="Amount 1" ID="Label4"></asp:Label>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp

<asp:TextBox ID="Amount1TextBox2" runat="server" Height="35px"  Width="270px" OnTextChanged="Amount1TextBox_TextChanged" AutoPostBack="True"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Amoun2CCY2" runat="server" Text="Label"></asp:Label>
         &nbsp;<asp:Label ID="Label8" runat="server" Text="Amount 2"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="Amount2TextBox2" runat="server" Height="35px" Width="270px" OnTextChanged="Amoun2TextBox_TextChanged" AutoPostBack="True"></asp:TextBox>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="ForwardRateLabel" runat="server" Text="Forward Rate"></asp:Label>
&nbsp;
         <asp:TextBox ID="ForwardRateTextBox" runat="server" Width="60px" AutoPostBack="True" OnTextChanged="ForwadRateChange"></asp:TextBox>
&nbsp;<p style="direction: ltr">&nbsp;</p>
         <p style="direction: ltr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CCY1&nbsp;

        <asp:DropDownList runat="server"  style="margin-top: 19px" Height="35px" Width="328px" ID="CCY1DropList" OnSelectedIndexChanged="DropList1_SelectedIndexChanged" OnTextChanged="DropList1_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>USD</asp:ListItem>
            <asp:ListItem>EGP</asp:ListItem>
           <asp:ListItem>SAR</asp:ListItem>
         <asp:ListItem>EUR</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CCY2&nbsp;&nbsp;

        <asp:DropDownList runat="server"  style="margin-top: 19px" Height="44px" Width="270px" ID="CCY2DropList" OnSelectedIndexChanged="DropList1_SelectedIndexChanged" AutoPostBack="True" OnTextChanged="DropList1_SelectedIndexChanged" AppendDataBoundItems="False">
            <asp:ListItem>EGP</asp:ListItem>
            <asp:ListItem>USD</asp:ListItem>
            <asp:ListItem>SAR</asp:ListItem>
            <asp:ListItem>EUR</asp:ListItem>
            </asp:DropDownList>
        </p>

            <p style="direction: ltr">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Trade Date"></asp:Label>
&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TradeDateTextBox" runat="server" Width="270px" Enabled="False" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Text="Value Date"></asp:Label>
&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="ValueDateTimeTextBox" runat="server" Width="270px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        </p>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        &nbsp;<p style="direction: ltr">&nbsp;
    <asp:Label runat="server" Text="Rate for demo" ID="PricesLabelStatic"></asp:Label>&nbsp;
                <asp:Label ID="PriceLabel" runat="server" Text="PriceLabel"></asp:Label>
            </p>
    <p style="direction: ltr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="InsertBTN" runat="server" OnClick="InsertBTN_Click" Text="Insert" Width="273px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ClearBTN" runat="server" OnClick="ClearBTN_Click" Text="Clear" Width="317px" />
</p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button runat="server" Text="Save prices " OnClick="SavePriceBTN_Click" ID="Btn2Prices" Width="300px"></asp:Button>

    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
    </p>

</asp:Content>
