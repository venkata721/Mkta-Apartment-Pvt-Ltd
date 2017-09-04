<%@ Page Title="Welcome To Home Page" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
   <a href="HomePage.aspx"><asp:Image ID="leftArrow" runat="server" AlternateText="Left" BackColor="#FF9933" BorderColor="black"  BorderWidth="1px" Height="100px" ImageUrl="~/Images/arrowleft.png" Width="25px" CssClass="Arrow" />
</a> <asp:AdRotator ID="imagesAdRotator" runat="server" AdvertisementFile="~/Images/adxml.xml" Width="95.5%" Height="688px" />

<a href="HomePage.aspx"><asp:Image ID="rightArrow" runat="server" AlternateText="Right" BackColor="#FF9933" BorderColor="black" BorderWidth="1px" Height="100px" ImageUrl="~/Images/arrowrigth.png" Width="25px" CssClass="Arrow" />
    </a>
</asp:Content>

