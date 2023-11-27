<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PortfoliosPage.aspx.cs" Inherits="Tree_Trading.PortfoliosPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
        <p>&nbsp;</p>

     &nbsp;  <asp:Label ID="PortfolioLabel" runat="server" Text="Portfolio Name"></asp:Label>
       &nbsp;&nbsp;&nbsp;<asp:DropDownList runat="server"  style="margin-top: 19px" Height="35px" Width="328px" ID="PortfolioDropList">
            <asp:ListItem>EGP</asp:ListItem>
            <asp:ListItem>USD</asp:ListItem>
           <asp:ListItem>SAR</asp:ListItem>
         <asp:ListItem>EUR</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    &nbsp;   <asp:Label ID="UsernameLabel" runat="server" Text="Username"></asp:Label>
       &nbsp; &nbsp;

    
        <asp:TextBox ID="UsernameBox" runat="server" Height="35px" Width="270px" Enabled="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
    <p style="direction: ltr">

       &nbsp; <asp:Label runat="server" Text="Amount" ID="AppendedAmountLabel"></asp:Label>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="AppendedAmountBox" runat="server" Height="35px"  Width="270px" OnTextChanged="Amount1TextBox_TextChanged"></asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="TotalPortfolioAmountLabel" runat="server" Text="Total Portfolio Amount"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;

        <asp:TextBox ID="TotalPortfolioAmountBox" runat="server" Height="35px" Width="270px" Enabled="False" OnTextChanged="Amoun2TextBox_TextChanged"></asp:TextBox>

    </p>

            <p style="direction: ltr">&nbsp;</p>
            <p style="direction: ltr">&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Trade time"></asp:Label>
&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox5" runat="server" Width="270px" Enabled="False" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        </p>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        &nbsp;<p style="direction: ltr">&nbsp;</p>
    <p style="direction: ltr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="273px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="AdminLabel" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" Width="317px" />
</p>
    <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
    </p>


</asp:Content>
