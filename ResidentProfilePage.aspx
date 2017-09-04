<%@ Page Title="My Profile " Language="C#" MasterPageFile="~/ResidentProfileMasterPage.master" AutoEventWireup="true" CodeFile="ResidentProfilePage.aspx.cs" Inherits="ResidentProfilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #TextArea1 {
            height: 83px;
            width: 376px;
        }
        #requestDescription {
            height: 87px;
            width: 379px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LogOutPage.aspx" style="float:right; position:relative;top:-43px;  margin-bottom:-30px;  font-size:x-large; font-weight:bold; font-family:Garamond; left: 0px; height: 30px; width: 100px;" CssClass="links" BackColor="Black">Log Out</asp:HyperLink>

          <div style="float:left;width:49.5%; height:300px;  border: grey solid 2px;">

    <h1  id="fullNameText"  runat="server" style="color: white;  "> Notification Center
 </h1>
    <hr />
              <p style="text-align:left; color:white; font-family:Garamond;font-size:x-large;">
    Welcome Home! - Your place for living
Begin enjoying amenities and services the e-way anytime - whether it's paying rent, requesting service or more.
   </p>
                   </div>
                <div style="float:left;width:49.5%; height:300px; text-align:center; border: grey solid 2px;">
    <h1  id="payment"  runat="server" style="color: white;  "> Account SnapShot
 </h1>
                    <hr />
                                  <p style="text-align:left; color:white; font-family:Garamond;font-size:x-large; margin:0px;">Current Amount Due: </p>

                    <hr />
                    <sup style="text-align:center;font-size:30px;color:lightblue; margin: 0px;">$</sup><asp:Label ID="paymentAmount" runat="server"  style="text-align:center;font-size:45px;color:lightblue; margin: 0px;"></asp:Label>
                    <hr />
                    <asp:Button ID="makePayment" runat="server" Text="Make Payment" Height="63px" style="margin-left: 0px" Width="190px" BackColor="#66FF99" Font-Bold="True" Font-Names="Garamond" Font-Size="Large" CausesValidation="False" PostBackUrl="~/ResidentPaymentPage.aspx"  />

       </div>

      <div style="float:left;width:49.5%; height:390px; text-align:center;  border: grey solid 2px;">

    <h1  id="profile"  runat="server" style=" float:left;color: white; margin:0px; "> My Profile
 </h1>
          <asp:HyperLink ID="HyperLink1" runat="server" style=" float:right;color: white; margin:0px; font-size:xx-large; " NavigateUrl="~/ResidentProfileUpdate.aspx">Edit Profile</asp:HyperLink>
    <div style="clear:both;"></div>
          <hr />

          <asp:DetailsView ID="DetailsView1" runat="server" Height="300px" Width="736px" BackColor="#FFCCCC" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="X-Large" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
              <Fields>
                  <asp:BoundField DataField="SSNId" HeaderText="SSNID" SortExpression="SSNId" />
                  <asp:BoundField DataField="firstname" HeaderText="FirstName" SortExpression="firstname" />
                  <asp:BoundField DataField="lastname" HeaderText="LastName" SortExpression="lastname" />
                  <asp:BoundField DataField="phonenum" HeaderText="PhoneNumber" SortExpression="phonenum" />
                  <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
              </Fields>
          </asp:DetailsView>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateDBConnectionString %>" SelectCommand="SELECT [SSNId], [firstname], [lastname], [phonenum], [address] FROM [EstateResidentsTable] WHERE ([username] = @username)">
              <SelectParameters>
                  <asp:SessionParameter Name="username" SessionField="ResidentLogin" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>

          <!--<asp:Label ID="nameLabel" runat="server" Text="Name : " Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="nameLabelFetched" runat="server" Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
          <hr style="color: #0000FF" />
          <asp:Label ID="Label2" runat="server" Text="SSN ID : " Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="idfetched" runat="server" Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
          <hr style="color: #FFFFFF" />
<asp:Label ID="Label4" runat="server" Text="Email : " Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="emailfetched" runat="server" Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
          <hr style="color: #0000FF" />
<asp:Label ID="Label6" runat="server" Text="Phone Number : " Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="phoneNofetched" runat="server" Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
          <hr style="color: #0000FF" />
<asp:Label ID="Label8" runat="server" Text="Address : " Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="addressfetched" runat="server" Font-Names="Garamond" ForeColor="White" Font-Bold="True" Font-Size="X-large"></asp:Label>
          -->
                   </div>
                <div style="float:left;width:49.5%; height:390px; text-align:center; border: grey solid 2px;">
    <h1  id="H2"  runat="server" style="color: white; margin:0px; ">Submit a Service Request
 </h1>
                    <hr />
                                  <p style="text-align:center; color:white; font-family:Garamond;font-size:x-large; margin:0px;">

                                      Contact After-Hours		: (913) 631-2100	
                                  </p>

                    <hr />
                                  <p style="text-align:center; color:white; font-family:Garamond;font-size:x-large; margin:0px;">

                                     Contact Emergencies : (913) 631-2100 or (911)

                                  </p>

                    <hr />
                    
                    <asp:Label ID="category" runat="server" Text="Category: " Font-Bold="True" Font-Names="Garamond" Font-Size="X-Large" ForeColor="White"></asp:Label>
                    <asp:DropDownList ID="categoryList" runat="server" Height="21px" Width="177px">
                        <asp:ListItem>Appliance</asp:ListItem>
                        <asp:ListItem>Doors And Locks</asp:ListItem>
                        <asp:ListItem>Flooring</asp:ListItem>
                        <asp:ListItem>Electricity</asp:ListItem>
                        <asp:ListItem>Plumbing</asp:ListItem>
                        <asp:ListItem>Safety Measures</asp:ListItem>
                        <asp:ListItem>General</asp:ListItem>
                    </asp:DropDownList>
                        <br /><br />
                    
                    <asp:Label ID="Label1" runat="server" Text="Request Description: " Font-Bold="True" Font-Names="Garamond" Font-Size="X-Large" ForeColor="White"></asp:Label>
                    <textarea id="requestDescription" runat="server"></textarea>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Description is Required" Display="Dynamic" Font-Bold="True" ControlToValidate="requestDescription" Font-Names="Garamond" Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="submitRequest" runat="server" Text="Submit Request" Height="63px" style="margin-left: 0px" Width="190px" BackColor="#66FF99" Font-Bold="True" Font-Names="Garamond" Font-Size="Large" OnClick="submitRequest_Click" />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="clearRequest" runat="server" Text="Clear Request" Height="63px" style="margin-left: 0px" Width="190px" BackColor="#66FF99" Font-Bold="True" Font-Names="Garamond" Font-Size="Large" CausesValidation="False" OnClick="clearRequest_Click" />
                    <br />
                    <br />
                                        <asp:Label ID="requestStatusLabel" runat="server"  Font-Bold="True" Font-Names="Garamond" Font-Size="X-Large" ForeColor="White"></asp:Label>

       </div>

</asp:Content>

