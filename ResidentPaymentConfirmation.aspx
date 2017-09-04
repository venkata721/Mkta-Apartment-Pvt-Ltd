<%@ Page Title=" Payment Confirmation Page" Language="C#" MasterPageFile="~/ResidentProfileMasterPage.master" AutoEventWireup="true" CodeFile="ResidentPaymentConfirmation.aspx.cs" Inherits="ResidentPaymentConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    
<table style="background-color:#009999;font-size:x-large; font-weight: bold; font-family:Garamond;width:100%;">
                        <tr>
                            <td align="center" colspan="2">Enter Your Payment Details To Make Payment</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="usernameLabel" runat="server" AssociatedControlID="UserNameText">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserNameText" runat="server" Height="25px" Width="202px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                        
                            <td align="right">
                                <asp:Label ID="PaymentAmountLabel" runat="server" AssociatedControlID="PaymentAmount">Payment Amount:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="PaymentAmount" runat="server" Height="25px" Width="202px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
    
                            <td align="right">
                                <asp:Label ID="PaymentDateLabel" runat="server" AssociatedControlID="PaymentDate">Payment Date:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="PaymentDate" runat="server" Height="25px" Width="202px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                                            

                        <tr>
                            <td align="right">
                                <asp:Label ID="CreditCardLabel" runat="server" AssociatedControlID="CreditCardNo">Credit Card Number:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CreditCardNo" runat="server" Height="25px" Width="202px"></asp:TextBox>
                            </td>
                        </tr>
                        

    <tr>
                            <td align="right">
                                <asp:Label ID="CreditCardNameLabel" runat="server" AssociatedControlID="CreditCardName">Name On Credit Card :</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CreditCardName" runat="server" Height="25px" Width="202px"></asp:TextBox>
                            </td>
                        </tr>
    <tr>
                                    <td align="right">
                                <asp:Label ID="CreditCardCVVLabel" runat="server" AssociatedControlID="CreditCardCVV" >CVV On Credit Card :</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CreditCardCVV" runat="server" Height="25px" Width="49px"></asp:TextBox>
                            </td>
                        </tr>
    
                            <tr>
                                    <td align="right">
                                <asp:Label ID="CreditCardExpDateLabel" runat="server" AssociatedControlID="CreditCardExpDate">Expiry Date (Format : MM/YYYY) :</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CreditCardExpDate" runat="server" Height="25px" Width="202px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                &nbsp;</td>
                            <td>
                                            &nbsp;</td>
                            </tr>
    
    <tr>
                            <td align="right">
                                <asp:Button ID="confirmPaymentButton" runat="server" Text="Confirm Payment" Height="41px" Width="235px" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" ForeColor="White" OnClick="confirmPaymentButton_Click"/>&nbsp;&nbsp;&nbsp; </td>
&nbsp;                            <td>
                                            &nbsp;                  
                 
                            </tr>
                                                     <tr >
                                    <td align="right" >
                                <asp:Label ID="ConfirmationNumberLabel" runat="server"  Visible="False">Confirmation Number :</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="ConfirmationNumberValue" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        
    
    
        </table>
               



</asp:Content>

