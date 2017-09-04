<%@ Page Title="Update Profile Page" Language="C#" MasterPageFile="~/ResidentProfileMasterPage.master" AutoEventWireup="true" CodeFile="ResidentProfileUpdate.aspx.cs" Inherits="ResidentProfileUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #permAddressText {
            height: 62px;
            width: 343px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
<div id ="UpdateProfile" style="background-color:#009999;font-size:x-large; font-weight: bold; font-family:Garamond;width:100%;">
                        <h2 style="text-align:center;">Update Your Profile Details</h2>
    <br />
                                <asp:Label style="text-align:center; padding-left:550px;" ID="FirstNameLabel" runat="server" AssociatedControlID="FirstName">First Name:</asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;<asp:TextBox ID="FirstName" runat="server" Height="25px" Width="202px"></asp:TextBox>    
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="First Name is required." BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="255px" Display="Dynamic" ForeColor="Red">* First Name is required.</asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="* Please Enter Alphabets For First Name " BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="FirstName" Font-Names="Garamond" Font-Size="large" ValidationExpression="^[a-zA-Z'.\s]{1,40}$" ></asp:RegularExpressionValidator>     
     <br />
                            <br />
                                <asp:Label style="text-align:center; padding-left:550px;" ID="LastNameLabel" runat="server" AssociatedControlID="LastName">Last Name:</asp:Label>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;<asp:TextBox ID="LastName" runat="server" Height="25px" Width="202px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="Last Name is required." ToolTip="Last Name is required." BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="255px" Display="Dynamic" ForeColor="Red" >* Last Name is required.</asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Please Enter Alphabets For Last Name " BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="LastName" Font-Names="Garamond" Font-Size="large" ValidationExpression="^[a-zA-Z'.\s]{1,40}$" ></asp:RegularExpressionValidator>     
                            <br />
                            <br />
                                 <asp:Label style="text-align:center; padding-left:550px;" ID="SSNIDLabel" runat="server" AssociatedControlID="SSNID">SSN ID:</asp:Label>
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                     <asp:TextBox ID="SSNID" runat="server" Height="25px" Width="202px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SSNID" ErrorMessage="SSNID is required."  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="193px" ForeColor="Red" Display="Dynamic">*SSNID is required</asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Invalid SSNID Format (Required 'XXX-XX-XXXX' ) " BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="SSNID" Font-Names="Garamond" Font-Size="large" ValidationExpression="\d{3}-\d{2}-\d{4}" ></asp:RegularExpressionValidator>    
                                <br />
                              <br />
                            <asp:Label style="text-align:center; padding-left:550px;"  ID="PhoneNumberLabel" runat="server" AssociatedControlID="PhoneNumber">Phone Number:</asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox  ID="PhoneNumber" runat="server" Height="25px" Width="202px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PhoneNumber" ErrorMessage="PhoneNumber is required."  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="293px" ForeColor="Red" Display="Dynamic" >* PhoneNumber is required.</asp:RequiredFieldValidator>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="* Invalid PhoneNumber Format (Required '(XXX) XXX-XXXX' ) " BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="PhoneNumber" Font-Names="Garamond" Font-Size="large" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ></asp:RegularExpressionValidator>    
                        
    <br />
                            <br />
                                    <asp:Label style="padding-left:550px;"  ID="permAddressLabel" runat="server" AssociatedControlID="permAddressText">Permanent Address :</asp:Label>
                                    <textarea id="permAddressText" runat="server" rows="6" cols="40" ></textarea>&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="permAddressText" ErrorMessage="Permanent Address is required."  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="Large" Width="293px" ForeColor="Red"  >* Permanent Address is required.</asp:RequiredFieldValidator>
    <br />
    <br />
    <div style="text-align:center; padding-left:5px;" >                  
        <asp:Button ID="updateProfileButton" runat="server" Text="Update Profile" Height="41px" Width="213px" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" ForeColor="White" OnClick="updateProfileButton_Click" />
                  &nbsp;&nbsp;
                  <asp:Button  ID="clearButton" runat="server" Text="Clear Profile" Height="41px" Width="213px" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" ForeColor="White" CausesValidation="False" OnClick="clearButton_Click" />
              </div>                                      
    
    
        </div>
               






</asp:Content>

