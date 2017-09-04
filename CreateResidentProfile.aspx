<%@ Page Title=" Create Resident Profile Page" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="CreateResidentProfile.aspx.cs" Inherits="CreateResidentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 style="color:white; text-align:center;">Create Your Profile</h1>             

    <asp:CreateUserWizard ID="CreateResidentForm" runat="server" BackColor="#009999" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CancelButtonStyle-BackColor="#336699" CancelButtonStyle-BorderColor="Black" CancelButtonStyle-BorderStyle="Solid" CancelButtonStyle-BorderWidth="1px" CancelButtonStyle-ForeColor="White" CompleteSuccessText="Your Profile has been successfully created. Please try to login" CompleteSuccessTextStyle-BackColor="#CCCCCC" CompleteSuccessTextStyle-BorderColor="Red" CompleteSuccessTextStyle-BorderStyle="Solid" CompleteSuccessTextStyle-BorderWidth="1px" CompleteSuccessTextStyle-ForeColor="Black" CancelDestinationPageUrl="~/HomePage.aspx" ContinueDestinationPageUrl="~/LoginPage.aspx" Width="1500px" Font-Bold="True" Font-Names="Garamond" Font-Overline="False" Font-Size="X-Large" LoginCreatedUser="False" style="align-content:center;" OnContinueButtonClick="CreateResidentForm_ContinueButtonClick" >
<CompleteSuccessTextStyle BackColor="#CCCCCC" BorderColor="Red" BorderWidth="1px" BorderStyle="Solid" ForeColor="Black"></CompleteSuccessTextStyle>
        <ContinueButtonStyle BackColor="#FF5050" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" />
        <CreateUserButtonStyle BackColor="#FF5050" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table style="background-color:#009999;font-size:100%;width:939px;">
                        <tr>
                            <td align="center" colspan="2">Sign Up for Your New Account</td>
                        </tr>
                        
                            
                         <tr>
                                <td align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Email" runat="server" Height="25px" Width="202px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ValidationGroup="CreateResidentForm" Display="Dynamic">*</asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Please Enter Correct Email Format" BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="Email" Font-Names="Garamond" Font-Size="large" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="CreateResidentForm"></asp:RegularExpressionValidator>     <br />

                                </td>
                            </tr>

                            <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" Height="25px" Width="202px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateResidentForm" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* InCorrect UserName Format('Required Email Format')" BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="UserName" Font-Names="Garamond" Font-Size="large" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="CreateResidentForm" ></asp:RegularExpressionValidator>     <br />
                            </td>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Height="25px" Width="202px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateResidentForm" Display="Dynamic">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Height="25px" Width="202px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateResidentForm" Display="Dynamic">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                           
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Question" runat="server" Height="25px" Width="202px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateResidentForm" Display="Dynamic" >*</asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="* Please Enter Alphabets For Security Question " BackColor="White" BorderColor="Maroon" BorderStyle="Solid" Display="Dynamic" ForeColor="#FF3300" BorderWidth="1px" Font-Bold="True" ControlToValidate="Question" Font-Names="Garamond" Font-Size="large" ValidationExpression="^[a-zA-Z'.\s]{1,40}$" ValidationGroup="CreateResidentForm"></asp:RegularExpressionValidator>     <br />
        
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server" Height="25px" Width="202px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateResidentForm" Display="Dynamic">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateResidentForm" ></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
             <asp:ValidationSummary style="margin:0px;" ID="CreateResidentFormValidationSummary" runat="server" ValidationGroup="CreateResidentForm" BackColor="White" BorderColor="#663300" BorderStyle="Solid" BorderWidth="2px" DisplayMode="List" Font-Bold="True" Font-Size="Large" ShowMessageBox="False" ShowSummary="True"></asp:ValidationSummary>
                                </td>
                            </tr>
                     
                                       <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
            <asp:WizardStep runat="server">
            </asp:WizardStep>
            <asp:TemplatedWizardStep runat="server">
            </asp:TemplatedWizardStep>
        </WizardSteps>

<CancelButtonStyle BackColor="#336699" BorderColor="Black" BorderWidth="1px" BorderStyle="Solid" ForeColor="White"></CancelButtonStyle>
    </asp:CreateUserWizard>


</asp:Content>

