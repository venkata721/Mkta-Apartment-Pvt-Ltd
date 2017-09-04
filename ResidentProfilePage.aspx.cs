using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Web.Configuration;
using System.Data;

public partial class ResidentProfilePage : System.Web.UI.Page
{
    private static string connec_str = WebConfigurationManager.ConnectionStrings["RealEstateDBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (Session["ResidentLogin"] != null)
        {
            fillPaymentAmount();
        }
        else
        {
            Server.Transfer("~/LoginPage.aspx");
        }
     
    }

    protected void fillPaymentAmount()
    {

        // Defining the Query for fetching to the drop down
        string query = "Select PaymentAmount from EstateFundsTable where username = '" + Session["ResidentLogin"] +"';";


        // Defining the connection and command objects
        SqlConnection connection = new SqlConnection(connec_str);

           SqlDataAdapter ada = new SqlDataAdapter(query, connection);

            DataTable dat = new DataTable();

            ada.Fill(dat);

            foreach (DataRow name in dat.Rows)
            {
                paymentAmount.Text = name[0].ToString();
                Session["PaymentAmount"] = name[0].ToString();
            }
       
    }
    protected void submitRequest_Click(object sender, EventArgs e)
    {

        string insertSQL = " Insert INTO EstateServicesTable (" +
            " username,category,RequestDate,Status,RequestDescription) " +
            "VALUES (" +
            "@username,@category,@RequestDate,@Status,@RequestDescription);";
        // Define the ADO.Net's
        SqlConnection con = new SqlConnection(connec_str);
        SqlCommand comm = new SqlCommand(insertSQL, con);

        comm.Parameters.AddWithValue("@username", Session["ResidentLogin"].ToString());
        comm.Parameters.AddWithValue("@category", categoryList.SelectedItem.Value);
        comm.Parameters.AddWithValue("@RequestDate", DateTime.Now.ToString());
        comm.Parameters.AddWithValue("@Status", "OPEN");
        comm.Parameters.AddWithValue("@RequestDescription", requestDescription.InnerText);
        int added = 0;
        try
        {
            con.Open();
            added = comm.ExecuteNonQuery();
            requestStatusLabel.Text = "Request Submitted Succesfully, Our Employee Will Contact You Soon";
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
    protected void clearRequest_Click(object sender, EventArgs e)
    {
        categoryList.SelectedIndex = -1;
        requestDescription.InnerText = string.Empty;
    }

}