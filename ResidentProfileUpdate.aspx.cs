using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class ResidentProfileUpdate : System.Web.UI.Page
{
    private static string connec_str = WebConfigurationManager.ConnectionStrings["RealEstateDBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }



    protected void updateProfileButton_Click(object sender, EventArgs e)
    {
        string updateSQL = " Update EstateResidentsTable SET " +
      "SSNId = @SSNId,firstname=@firstname,lastname=@lastname,phonenum=@phonenum,address=@address" +
      " where username = '" + Session["ResidentLogin"].ToString() +"';" ;



        SqlConnection con = new SqlConnection(connec_str);
        SqlCommand comm = new SqlCommand(updateSQL, con);

        comm.Parameters.AddWithValue("@SSNId", SSNID.Text);
        comm.Parameters.AddWithValue("@firstname", FirstName.Text);
        comm.Parameters.AddWithValue("@lastname", LastName.Text);
        comm.Parameters.AddWithValue("@phonenum", PhoneNumber.Text);
        comm.Parameters.AddWithValue("@address", permAddressText.InnerText);

        int updated = 0;
        try
        {
            con.Open();
            updated = comm.ExecuteNonQuery();
            Server.Transfer("~/ResidentProfilePage.aspx");
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
    protected void clearButton_Click(object sender, EventArgs e)
    {
        FirstName.Text = "";
        LastName.Text = "";
        SSNID.Text = "";
        permAddressText.InnerText = "";
        PhoneNumber.Text = "";
    }
}