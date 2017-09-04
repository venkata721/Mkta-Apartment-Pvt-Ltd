<%@ Page Title=" About Us Page" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="EmpAboutUsPage.aspx.cs" Inherits="EmpAboutUsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Employee/EmpLogOutPage.aspx" style="float:right; position:relative;top:-45px; font-size:x-large; font-weight:bold; font-family:Garamond; left: 0px; height: 30px; width: 100px;" CssClass="links" BackColor="Black">Log Out</asp:HyperLink>
    
    <h2 style="color:white;">Who We Are ? </h2>
        <p style="float:left; color :white;font-family:Garamond;font-size:20px;"> 
            MKTA Real Estate is a full service and fully integrated real estate investment management company. MKTA Real Estate provides <br />
             a comprehensive range of real estate solutions to institutional owners as well as regional and local ownership groups.We strive to <br />
            provide exceptional service to our residents and to be a valued partner to our clients and investment partners.</p>
        <asp:Image ID="Image1" runat="server" Height="200px" Width="400px" ImageUrl="~/Images/about_us_r2_c3.jpg" />
        <asp:Image ID="Image2" runat="server" Height="150px" Width="350px" style="float:left;" ImageUrl="~/Images/about_us_r3_c1.jpg" />
        <p style=" color:white;font-family:Garamond;font-size:20px;">
            &nbsp;&nbsp;MKTA Real Estate has developed management tools and reporting capabilities that are built to exceed the expectations of the most <br />
            sophisticated owners. Our team has the management expertise and resources of an institutional management company, but we still offer<br />
            owners the flexibility, creativity and performance of a boutique management firm.
         </p>
        <div style="clear:both"></div>
        <h2 style="color:white;">Our Mission: </h2>

        <p style="float:left; color :white;font-family:Garamond;font-size:20px;">

            We make it our mission to offer exemplary service to our clients by providing a team of highly skilled and motivated professionals.
            <br /> All members of our team take personal responsibility for delivering excellence to our residents, our employees and our owners. 
            <br />This mission is guided by the following principles:<br />
            Service: "Act as if what you do makes a difference. It does." - William James<br />
            Teamwork: "Individual commitment to a group effort." - Vince Lombardi<br />
            Character: "Character is doing the right thing when nobody's looking".- J.C. Watts
        </p>
        <asp:Image ID="Image3" runat="server" Height="200px" Width="400px" ImageUrl="~/Images/about_us_r4_c3.jpg" />

</asp:Content>


