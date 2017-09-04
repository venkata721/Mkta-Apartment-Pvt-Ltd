<%@ Page Title="Facilities Home Page" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="ServicesPage.aspx.cs" Inherits="ServicesPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table border='1' style="width:100%; border: white solid 2px;" >
<tr style="height:343px;">
<td style="height:343px; width:40%"><a href="OneBHKInfoPage.aspx"> 
    <asp:Image ID="Image1" runat="server" style=" display:block; width: 100%; height:100%;" ImageUrl="~/Images/onebhk.jpg" />
    </a>
</td>
<td style="height:343px; width:40%"><a href="TwoBHKInfoPage.aspx"> 
    <asp:Image ID="Image2" runat="server" style=" display:block; width: 100%; height:100%;" ImageUrl="~/Images/twobhk.jpg" />  </a></td>
</tr>
<tr style="height:343px;">
<td style="height:343px; width:40%"><a href="DuplexInfoPage.aspx"> 
        <asp:Image ID="Image3" runat="server" style=" display:block; width: 100%; height:100%;" ImageUrl="~/Images/duplex.jpg" />  </a></td>
<td style="height:343px; width:40%"><a href="VillaInfoPage.aspx"> 
        <asp:Image ID="Image4" runat="server" style=" display:block; width: 100%; height:100%;" ImageUrl="~/Images/villa.jpg" /> </a></td> 
</tr>
</table>


</asp:Content>

