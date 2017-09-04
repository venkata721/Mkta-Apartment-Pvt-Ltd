using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Windows.Forms;
using System.Net.Mail;
using System.Net.Mime;
using System.Net;

public partial class EmpServices : System.Web.UI.Page
{

    private static string connec_str = WebConfigurationManager.ConnectionStrings["RealEstateDBConnectionString"].ConnectionString;
    private static string localcon_str = WebConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (Session["EmployeeLogin"] != null)
        {
            if (!IsPostBack)
            {
                fillFacilityAllotmentDropdown();
            }

            leaseJoinDate.Text = DateTime.Now.ToString();

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> Please Provide Your Exact Login Details </script>");
            Server.Transfer("~/LoginPage.aspx");

        }
     
     
    }


    protected void fillFacilityAllotmentDropdown()
    {

        facilityList.Items.Clear();

        // Defining the Query for fetching to the drop down
        string query = "Select Type,status from EstateHomeAllotmentTable where status='AVAILABLE'";
        
        // Defining the connection and command objects
        SqlConnection connection = new SqlConnection(connec_str);
        SqlCommand comm = new SqlCommand(query, connection);
        SqlDataReader reader;
        try
        {
            connection.Open();
            reader = comm.ExecuteReader();

            while (reader.Read())
            {

                ListItem item = new ListItem();
                item.Text = reader[0].ToString() + " ---- " + reader[1].ToString();
                item.Value = reader[0].ToString();

                facilityList.Items.Add(item);
            }
            reader.Close();

        }
        catch (Exception err)
        {
        }
        finally
        {
            connection.Close();
        }
   
         
    }

protected void updatePayments_Click(object sender, EventArgs e)
    {

        string updateoneBHKSQL = " Update EstateFundsTable SET " +
            "PaymentAmount ='699.00'" + ",Status='Pending' "+
            " where Type like " +
            "'%OneBHK%';";


        SqlConnection conOne = new SqlConnection(connec_str);
        SqlCommand commOne = new SqlCommand(updateoneBHKSQL, conOne);
        int updatedOne, updatedTwo, updatedDup, updatedVilla = 0;
        conOne.Open();
        updatedOne = commOne.ExecuteNonQuery();
        conOne.Close();


        string updatetwoBHKSQL = " Update EstateFundsTable SET " +
            "PaymentAmount ='899.00'" +",Status='Pending'" +
            " where Type like " +
            "'%TwoBHK%';";


        SqlConnection contwo = new SqlConnection(connec_str);
        SqlCommand commtwo = new SqlCommand(updatetwoBHKSQL, contwo);
        contwo.Open();
        updatedTwo = commtwo.ExecuteNonQuery();
        contwo.Close();


        string updateDupSQL = " Update EstateFundsTable SET " +
            "PaymentAmount ='2699.00'" + ",Status='Pending' " +
            " where Type like " +
            "'%Duplex%';";


        SqlConnection conDup = new SqlConnection(connec_str);
        SqlCommand commDup = new SqlCommand(updateDupSQL, conDup);
        conDup.Open();
        updatedDup = commDup.ExecuteNonQuery();
        conDup.Close();


        string updateVillaSQL = " Update EstateFundsTable SET " +
            "PaymentAmount ='7699.00'" + ",Status='Pending' " +
            " where Type like " +
            "'%Villa%';";


        SqlConnection conVilla = new SqlConnection(connec_str);
        SqlCommand commVilla = new SqlCommand(updateVillaSQL, conVilla);
        conVilla.Open();
        updatedVilla = commVilla.ExecuteNonQuery();
        conVilla.Close();




    }
    protected void durationList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (durationList.SelectedIndex == 0)
        {
           leaseEndDate.Text = DateTime.Now.AddMonths(Int32.Parse(durationList.SelectedItem.Value)).ToString();
        }
        else if (durationList.SelectedIndex == 1)
        {
            leaseEndDate.Text = DateTime.Now.AddMonths(Int32.Parse(durationList.SelectedItem.Value)).ToString();
        }
        else if (durationList.SelectedIndex == 2)
        {
            leaseEndDate.Text = DateTime.Now.AddMonths(Int32.Parse(durationList.SelectedItem.Value)).ToString();
        }
        else if (durationList.SelectedIndex == 3)
        {
            leaseEndDate.Text = DateTime.Now.AddMonths(Int32.Parse(durationList.SelectedItem.Value)).ToString();
        }
        else if (durationList.SelectedIndex == 4)
        {
            leaseEndDate.Text = DateTime.Now.AddMonths(Int32.Parse(durationList.SelectedItem.Value)).ToString();
        }
        else if (durationList.SelectedIndex == 5)
        {
            leaseEndDate.Text = DateTime.Now.AddMonths(Int32.Parse(durationList.SelectedItem.Value)).ToString();
        }
        else if (durationList.SelectedIndex == 6)
        {
            leaseEndDate.Text = DateTime.Now.AddMonths(Int32.Parse(durationList.SelectedItem.Value)).ToString();
        }
        else
        {
            leaseEndDate.Text = DateTime.Now.AddMonths(Int32.Parse(durationList.SelectedItem.Value)).ToString();
        }

        }

    protected void confirmAllotment_Click(object sender, EventArgs e)
    {

        string updateSQL = " Update EstateHomeAllotmentTable SET " +
      "Type = @Type,username = @username,LeaseJoinDate=@LeaseJoinDate,LeaseEndDate=@LeaseEndDate,status=@status,carfacility=@carfacility,petfacility=@petfacility " +
      "where Type = '" + facilityList.SelectedItem.Value + "';";
        

        SqlConnection con = new SqlConnection(connec_str);
        SqlCommand comm = new SqlCommand(updateSQL, con);

        comm.Parameters.AddWithValue("@Type", facilityList.SelectedItem.Value);
        comm.Parameters.AddWithValue("@username", allotUsername.Text);
        comm.Parameters.AddWithValue("@LeaseJoinDate", leaseJoinDate.Text);
        comm.Parameters.AddWithValue("@LeaseEndDate", leaseEndDate.Text);
        comm.Parameters.AddWithValue("@status", facilityStatus.SelectedItem.Value);
        comm.Parameters.AddWithValue("@carfacility", vehicleFacility.SelectedItem.Value);
        comm.Parameters.AddWithValue("@petfacility", petFacility.SelectedItem.Value);
        int updated = 0;
        
        try
        {
        
            con.Open();
            updated = comm.ExecuteNonQuery();
            MessageBox.Show("@updated" + updated);

            fillInFundsTable();
            confirmLabel.Text = facilityList.SelectedItem.Value + " is Successfully  Alloted";
        }
        catch (Exception err)
        {
            string errmsg = err.Message;
        }
        finally
        {
        
            con.Close();

        }




    }

    protected void fillInFundsTable()
    {
        string updateSQL = " Update EstateFundsTable SET " +
      "username = @username" +
      " where Type = '" + facilityList.SelectedItem.Value + "';";

        SqlConnection con = new SqlConnection(connec_str);
        SqlCommand comm = new SqlCommand(updateSQL, con);

        comm.Parameters.AddWithValue("@username", allotUsername.Text);
        int updated = 0;
        try
        {
            con.Open();
            updated = comm.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            string errmsg = err.Message;
        }
        finally
        {

            con.Close();

        }


    }

    protected void sendEmailButton_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient client = new SmtpClient();
            MailMessage ms = new MailMessage();
            ms.To.Add( emailUserNameText.Text);
            ms.Subject  = emailSubject.Text;
            ms.Body = emailContent.InnerText;
            client.Send(ms);
            emailSentLabel.Text= "Email Sent Successfully To User : " +emailUserNameText.Text + "";

        }
        catch (Exception er)
        {
            MessageBox.Show(er.Message);
        }




    }
}
