<%@ Page Title="Payment Page" Language="C#" MasterPageFile="~/ResidentProfileMasterPage.master" AutoEventWireup="true" CodeFile="ResidentPaymentPage.aspx.cs" Inherits="ResidentPaymentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="background-color:#009999;font-size:x-large; font-weight: bold; font-family:Garamond;width:100%;">
                                    <h2 style="text-align:center;">Enter Your Payment Details To Make Payment</h2>
        <br />
                                <asp:Label style="text-align:center; padding-left:550px;" ID="usernameLabel" runat="server" AssociatedControlID="UserNameText">User Name:</asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="UserNameText" runat="server" Height="25px" Width="202px" ReadOnly="True"></asp:TextBox>
                            <br />
                            <br />
                                <asp:Label style="text-align:center; padding-left:550px;" ID="PaymentAmountLabel" runat="server" AssociatedControlID="PaymentAmount">Payment Amount:</asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="PaymentAmount" runat="server" Height="25px" Width="202px" ReadOnly="True"></asp:TextBox>
                            <br />
                            <br />
                                <asp:Label style="text-align:center; padding-left:550px;" ID="PaymentDateLabel" runat="server" AssociatedControlID="PaymentDate">Payment Date:</asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="PaymentDate" runat="server" Height="25px" Width="202px" ReadOnly="True"></asp:TextBox>
                            <br />    
                            <br />
                            <asp:Label style="text-align:center; padding-left:550px;" ID="CreditCardLabel" runat="server" AssociatedControlID="CreditCardNo">Credit Card Number:</asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="CreditCardNo" runat="server" Height="25px" Width="202px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CreditCardNo" ErrorMessage="CreditCardNo is required." BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="255px" Display="Dynamic" ForeColor="Red">*  CreditCardNumber is Required</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="* Please Enter Valid CreditCardNumber" BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="CreditCardNo" Font-Names="Garamond" Font-Size="large" ValidationExpression="^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$" ></asp:RegularExpressionValidator>     

                            <br />
                            <br />
                            <asp:Label style="text-align:center; padding-left:550px;" ID="CreditCardNameLabel" runat="server" AssociatedControlID="CreditCardName">Name On Credit Card :</asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:TextBox ID="CreditCardName" runat="server" Height="25px" Width="202px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CreditCardName" ErrorMessage="CreditCardName is required." BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="255px" Display="Dynamic" ForeColor="Red">* CreditCardName is required</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Please Enter Alphabets For CreditCardName " BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="CreditCardName" Font-Names="Garamond" Font-Size="large" ValidationExpression="^[a-zA-Z'.\s]{1,40}$" ></asp:RegularExpressionValidator>     
                    
        <br />
                             <br />
                           <asp:Label style="text-align:center; padding-left:550px;" ID="CreditCardCVVLabel" runat="server" AssociatedControlID="CreditCardCVV" >CVV On Credit Card :</asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="CreditCardCVV" runat="server" Height="25px" Width="49px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CreditCardCVV" ErrorMessage="CreditCard CVV Number is required."  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="255px" Display="Dynamic" ForeColor="Red">*CreditCard CVV Number is required.</asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Invalid CVV Number" BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="CreditCardCVV" Font-Names="Garamond" Font-Size="large" ValidationExpression="^([0-9]{3,4})$" ></asp:RegularExpressionValidator>     
              
                <br />    
                            <br />
                            <asp:Label style="text-align:center; padding-left:550px;" ID="CreditCardExpDateLabel" runat="server" AssociatedControlID="CreditCardExpMonth">Expiry Date (Format : MM/YYYY) :</asp:Label>
                             <asp:TextBox ID="CreditCardExpMonth" runat="server" Height="25px" Width="58px"></asp:TextBox>
                            &nbsp;<asp:TextBox ID="CreditCardExpYear" runat="server" Height="25px" Width="69px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CreditCardExpMonth"  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="255px" Display="Dynamic" ForeColor="Red">*Credit Card Expiry Date is required.</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="* Invalid Month" ControlToValidate="CreditCardExpMonth"  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="255px" Display="Dynamic" ForeColor="Red" MaximumValue="12" MinimumValue="01" Type="Integer"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="* Invalid Year Entered" ControlToValidate="CreditCardExpYear"  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="255px" Display="Dynamic" ForeColor="Red" MaximumValue="2026" Type="Integer" MinimumValue="2006"></asp:RangeValidator>                 <br />
                            <br />
                <div style="text-align:center; padding-left:5px;"><asp:Button ID="makePaymentButton" runat="server" Text="Make Payment" Height="41px" Width="0px" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" ForeColor="White" OnClick="makePaymentButton_Click" />&nbsp;&nbsp;&nbsp; </td>
&nbsp;                               <asp:Button ID="clearButton" runat="server" Text="Clear" Height="41px" Width="213px" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" ForeColor="White" CausesValidation="False" /></td>
</div>    
        </div>
<hr />
    <div>


    </div>
</asp:Content>

