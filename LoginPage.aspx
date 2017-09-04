<%@ Page Title="Account Login Page" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="float:left;width:49.5%; height:688px; text-align:center; border: white dotted 2px;">
    <asp:label ID="Label3" runat="server" style="font-family:'Copperplate Gothic'; color:blue; font-size:xx-large; " BackColor="#FFFFFF"><b>RESIDENT LOGIN </b> </asp:label>
    <div style="float:left;width:94%; height:200px; text-align:center; padding:20px; border: white solid 2px;">
        <asp:Image ID="Image1" style="background-color:white; display :block; width:100%;height:100%" width="80%" height="200px" runat="server" ImageUrl="~/Images/reslogin.png" />
    </div>
        <div style="overflow: scroll ;float:left;width:94%; height:360px; text-align:center; padding:20px; border: white solid 2px;">


            <asp:Login ID="residentLogin" runat="server" style="background-color:lavender;" Height="250px" Width="680px" BorderColor="White" BorderStyle="Solid" DisplayRememberMe="False" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" TitleText="Resident Log In" DestinationPageUrl="~/ResidentProfilePage.aspx" OnLoggedIn="residentLogin_LoggedIn" >
                <LabelStyle Font-Bold="True" Font-Italic="False" ForeColor="Maroon" />
                <FailureTextStyle BackColor="White" Font-Bold="True" Font-Size="Large" />
                <LoginButtonStyle BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Smaller" Font-Names="Garamond" />
                <TextBoxStyle BorderColor="Black" BorderStyle="Solid" Font-Size="Large" />
                <TitleTextStyle ForeColor="Maroon" />
                <ValidatorTextStyle Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" BackColor="White" />

                 </asp:Login>
         <asp:ValidationSummary style="margin:0px;" ID="ResidentLoginValidationSummary" runat="server" ValidationGroup="residentLogin" BackColor="White" BorderColor="#663300" BorderStyle="Solid" BorderWidth="2px" DisplayMode="List" Font-Bold="True" Font-Size="Large" ShowMessageBox="False" ShowSummary="True"></asp:ValidationSummary>

            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server"  style="background-color:lavender;" Height="250px" Width="680px" BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger">
                <LabelStyle Font-Bold="True" Font-Italic="False" ForeColor="Maroon" />
                <FailureTextStyle BackColor="White" Font-Bold="True" Font-Size="Large" />
                <TextBoxStyle BorderColor="Black" BorderStyle="Solid" Font-Size="Large" />
                <TitleTextStyle ForeColor="Maroon" />
                <ValidatorTextStyle Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" BackColor="White" />
                <SubmitButtonStyle BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Smaller" Font-Names="Garamond"  />
            </asp:PasswordRecovery>
                     <asp:ValidationSummary style="margin:0px;" ID="PasswordRecoveryValidationSummary" runat="server" ValidationGroup="residentLogin" BackColor="White" BorderColor="#663300" BorderStyle="Solid" BorderWidth="2px" DisplayMode="List" Font-Bold="True" Font-Size="Large" ShowMessageBox="False" ShowSummary="True"></asp:ValidationSummary>

            <div style="width:684px; font-family:Garamond;font-size:larger; height:60px; text-align:center; border: white solid 2px; background-color:lavender;" >
<asp:HyperLink ID="HyperLink2"  runat="server" NavigateUrl="~/CreateResidentProfile.aspx" style="font-size:xx-large; color:maroon; margin-top:5px;" CssClass="links">Click Here To Create Your Account</asp:HyperLink>

           </div>

           <div style="width:684px; font-family:Garamond;font-size:larger; height:60px; text-align:center; border: white solid 2px; background-color:lavender;" >
<asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/ResidentPasswordChange.aspx" style="font-size:xx-large; color:maroon; margin-top:5px;" CssClass="links">Click Here To Change Your Password</asp:HyperLink>

           </div>

    </div>
    </div>
    
        <div   style="float:left; text-align:center;width:49.5%; height:688px; border: white dotted 2px;">

        <asp:label ID="Label1" runat="server" style=" font-family:'Copperplate Gothic'; color:blue;font-size:xx-large; " BackColor="#FFFFFF"><b>EMPLOYEE LOGIN </b> </asp:label>

                <div style="float:left;width:94%; height:200px; text-align:center; padding:20px; border: white solid 2px;">
                            <asp:Image ID="Image2" style= " display:block; width:100%;height:100%" width="94%" height="200px" runat="server" ImageUrl="~/Images/emplogin.jpg" />



    </div>
        <div style="float:left;width:94%; height:360px; text-align:center; padding:20px; border: white solid 2px;">

                   <asp:Login ID="EmployeeLogin" runat="server" style="background-color:#3399FF;" Height="281px" Width="681px" BorderColor="white" BorderStyle="Solid" DisplayRememberMe="False" Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" TitleText="Employee Log In" UserNameLabelText="Employee ID" UserNameRequiredErrorMessage="Employee ID is required." DestinationPageUrl="~/Employee/EmployeeProfilePage.aspx" OnLoggedIn="EmployeeLogin_LoggedIn" >
                <CheckBoxStyle BackColor="#9999FF" BorderColor="Black" BorderStyle="Dotted" BorderWidth="1px" Font-Size="Large" ForeColor="#0000CC" />
                <LabelStyle Font-Bold="True" Font-Italic="False"  />
                <FailureTextStyle BackColor="White" Font-Bold="True" Font-Size="Large" />
                <LoginButtonStyle BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Smaller" Font-Names="Garamond" />
                <TextBoxStyle BorderColor="Black" BorderStyle="Solid" Font-Size="Large" />
                <ValidatorTextStyle Font-Bold="True" Font-Names="Garamond" Font-Size="Larger" />
                   </asp:Login>
         <asp:ValidationSummary style="margin:0px;" ID="EmployeeLoginValidationSummary" runat="server" ValidationGroup="residentLogin" BackColor="White" BorderColor="#663300" BorderStyle="Solid" BorderWidth="2px" DisplayMode="List" Font-Bold="True" Font-Size="Large" ShowMessageBox="False" ShowSummary="True"></asp:ValidationSummary>
            


    </div>

</div>
</asp:Content>

