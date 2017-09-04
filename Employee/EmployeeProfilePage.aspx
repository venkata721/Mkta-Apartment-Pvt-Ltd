<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/Employee/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeProfilePage.aspx.cs" Inherits="EmployeeProfilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Employee/EmpLogOutPage.aspx" style="float:right; position:relative;top:-45px; font-size:x-large; font-weight:bold; font-family:Garamond; left: 0px; height: 30px; width: 100px;" CssClass="links" BackColor="Black">Log Out</asp:HyperLink>

    <span style="color:white; font-size:xx-large">Welcome, </span>
    <asp:LoginName ID="empLoginName" runat="server" ForeColor="White" Font-Size="xx-large" />

    <br />
    <br />
    <span style="color:white; font-size:xx-large;"><b>Resident List </b></span>
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ResidentDataSource" Width="1515px" AllowPaging="True" BackColor="#00FFCC" ForeColor="black" BorderColor="#FF9900" BorderStyle="Solid" BorderWidth="2px" Height="600px" Font-Size="X-Large">
            <Columns>
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                <asp:BoundField DataField="LeaseJoinDate" HeaderText="LeaseJoinDate" SortExpression="LeaseJoinDate" />
                <asp:BoundField DataField="LeaseEndDate" HeaderText="LeaseEndDate" SortExpression="LeaseEndDate" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="carfacility" HeaderText="CarFacility" SortExpression="carfacility" />
                <asp:BoundField DataField="petfacility" HeaderText="PetFacility" SortExpression="petfacility" ReadOnly="True" />
            </Columns>
            <FooterStyle BackColor="#CC9900" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" />
            <PagerStyle BackColor="#99CCFF" Font-Bold="True" />
    </asp:GridView>

    <asp:SqlDataSource ID="ResidentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateDBConnectionString %>" SelectCommand="SELECT * FROM [EstateHomeAllotmentTable]"></asp:SqlDataSource>

</asp:Content>

