<%@ Page Title="Contact Us Page" Language="C#" MasterPageFile="~/ResidentProfileMasterPage.master" AutoEventWireup="true" CodeFile="ResContactUsPage.aspx.cs" Inherits="ResContactUsPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                  <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LogOutPage.aspx" style="float:right; position:relative;top:-45px;  margin-bottom:-30px;  font-size:x-large; font-weight:bold; font-family:Garamond; left: 0px; height: 30px; width: 100px;" CssClass="links" BackColor="Black">Log Out</asp:HyperLink>

    <h2 style="color:white;">Leasing Center Office Details: </h2>
            <asp:Image ID="Image4" runat="server" Height="120px" style="float:left;" Width="370px" ImageUrl="~/Images/lease.jpg" />

    <p style="color:white; font-size:20px;">7530 Cody St, <br />Shawnee, KS 66214
       <br /> <b> Email: leasinginfo@mktarealestates.com</b>
       <br /> <b> Contact: +1 - 913-222-5596  </b>
    </p>
         <div style="clear:both;"></div>

    <hr />
    <h2 style="color:white;">Customer Service Details: </h2>
    <asp:Image ID="Image3" runat="server" Height="100px" style="float:left;" Width="100px" ImageUrl="~/Images/cust.jpg" />
        <p style="color:white; font-size:20px;"> <b> Email: custserv@mktarealestates.com</b></p>
       <p style="color:white; font-size:20px;"> <b> Contact: +1 - 800-222-5111  </b></p>
    <br />
     <div style="clear:both;"></div>

     <hr />

    <h2 style="color:white;">Management Details : </h2>
        <asp:Image ID="Image1" runat="server" Height="100px" style="float:left;" Width="100px" ImageUrl="~/Images/profile.png" BackColor="White" />
    <p style="color:white; font-size:20px;"> Masthan Khadari Syed</p>
        <p style="color:white; font-size:20px;"> Leasing Consultant Manager</p>
             <div style="clear:both;"></div>

        <asp:Image ID="Image2" runat="server" Height="100px"   style="float:left;" Width ="100px" ImageUrl="~/Images/profile.png" BorderColor="White" BackColor="White" />
 
    <p style="color:white; font-size:20px;"> Venkata Anvesh Tavva</p>
        <p style="color:white; font-size:20px;"> Marketing & Production Manager</p>

</asp:Content>

