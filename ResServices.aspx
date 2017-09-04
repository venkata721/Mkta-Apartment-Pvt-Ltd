<%@ Page Title="Facilities Page" Language="C#" MasterPageFile="~/ResidentProfileMasterPage.master" AutoEventWireup="true" CodeFile="ResServices.aspx.cs" Inherits="ResServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
              <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LogOutPage.aspx" style="float:right; position:relative;top:-45px;  margin-bottom:-30px;  font-size:x-large; font-weight:bold; font-family:Garamond; left: 0px; height: 30px; width: 100px;" CssClass="links" BackColor="Black">Log Out</asp:HyperLink>

    <table border='1' style="width:100%; border: white solid 2px;" >
<tr style="height:343px;">
<td style="height:343px; width:40%"><a href="ResOneBHKInfoPage.aspx"> 
    <asp:Image ID="Image1" runat="server" style=" display:block; width: 100%; height:100%;" ImageUrl="~/Images/onebhk.jpg" />
    </a>
</td>
<td style="height:343px; width:40%"><a href="ResTwoBHKInfoPage.aspx"> 
    <asp:Image ID="Image2" runat="server" style=" display:block; width: 100%; height:100%;" ImageUrl="~/Images/twobhk.jpg" />  </a></td>
</tr>
<tr style="height:343px;">
<td style="height:343px; width:40%"><a href="ResDuplexInfoPage.aspx"> 
        <asp:Image ID="Image3" runat="server" style=" display:block; width: 100%; height:100%;" ImageUrl="~/Images/duplex.jpg" />  </a></td>
<td style="height:343px; width:40%"><a href="ResVillaInfoPage.aspx"> 
        <asp:Image ID="Image4" runat="server" style=" display:block; width: 100%; height:100%;" ImageUrl="~/Images/villa.jpg" /> </a></td> 
</tr>
</table>


</asp:Content>

