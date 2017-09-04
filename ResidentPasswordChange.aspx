<%@ Page Title="Resident Password Change Page" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="ResidentPasswordChange.aspx.cs" Inherits="ResidentPasswordChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ChangePassword ID="ResidentChangePassword" runat="server" BackColor="#009999" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CancelButtonStyle-BackColor="#FF6699" CancelButtonStyle-BorderColor="Black" CancelButtonStyle-BorderStyle="Solid" CancelButtonStyle-BorderWidth="1px" CancelButtonStyle-ForeColor="Blue" ChangePasswordButtonStyle-BackColor="#FF6699" ChangePasswordButtonStyle-BorderColor="Black" ChangePasswordButtonStyle-BorderStyle="Solid" ChangePasswordButtonStyle-BorderWidth="1px" ChangePasswordButtonStyle-ForeColor="Blue" ContinueButtonStyle-BackColor="#FF6699" ContinueButtonStyle-BorderColor="Black" ContinueButtonStyle-BorderStyle="Solid" ContinueButtonStyle-BorderWidth="1px" ContinueButtonStyle-ForeColor="Blue" FailureTextStyle-BackColor="#FFCCFF" FailureTextStyle-BorderColor="Black" FailureTextStyle-BorderStyle="Solid" FailureTextStyle-BorderWidth="2px" FailureTextStyle-ForeColor="Red" Font-Bold="True" Font-Size="X-Large" LabelStyle-ForeColor="Black" SuccessTextStyle-BackColor="#CCCCCC" SuccessTextStyle-BorderColor="Black" SuccessTextStyle-BorderStyle="Solid" SuccessTextStyle-BorderWidth="2px" SuccessTextStyle-ForeColor="#CC3300" CancelDestinationPageUrl="~/LoginPage.aspx" ContinueDestinationPageUrl="~/LoginPage.aspx" SuccessPageUrl="~/LoginPage.aspx" Font-Names="Garamond" Height="381px" style="width:100%; text-align:center;"  DisplayUserName="True" OnChangedPassword="ResidentChangePassword_ChangedPassword">
<CancelButtonStyle BackColor="#FF6699" BorderColor="Black" BorderWidth="1px" BorderStyle="Solid" ForeColor="Blue" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger"></CancelButtonStyle>

<ChangePasswordButtonStyle BackColor="#FF6699" BorderColor="Black" BorderWidth="1px" BorderStyle="Solid" ForeColor="Blue" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger"></ChangePasswordButtonStyle>

<ContinueButtonStyle BackColor="#FF6699" BorderColor="Black" BorderWidth="1px" BorderStyle="Solid" ForeColor="Blue"></ContinueButtonStyle>

<FailureTextStyle BackColor="#FFCCFF" BorderColor="Black" BorderWidth="2px" BorderStyle="Solid" ForeColor="Red"></FailureTextStyle>

<LabelStyle ForeColor="Black"></LabelStyle>

<SuccessTextStyle BackColor="#CCCCCC" BorderColor="Black" BorderWidth="2px" BorderStyle="Solid" ForeColor="#CC3300"></SuccessTextStyle>
    </asp:ChangePassword>
             <asp:ValidationSummary style="margin:0px;" ID="ResidentPasswordChangeValidationSummary" runat="server" ValidationGroup="ResidentChangePassword" BackColor="White" BorderColor="#663300" BorderStyle="Solid" BorderWidth="2px" DisplayMode="List" Font-Bold="True" Font-Size="Large" ShowMessageBox="False" ShowSummary="True"></asp:ValidationSummary>


</asp:Content>

