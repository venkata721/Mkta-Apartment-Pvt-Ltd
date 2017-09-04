using System;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class LoginPage : System.Web.UI.Page
{


    private static string connec_str = WebConfigurationManager.ConnectionStrings["RealEstateDBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        ResidentLoginValidationSummary.ValidationGroup = residentLogin.UniqueID;
        PasswordRecoveryValidationSummary.ValidationGroup = PasswordRecovery1.UniqueID;
        EmployeeLoginValidationSummary.ValidationGroup = EmployeeLogin.UniqueID;
    }



   /*
    protected void EmployeeLogin_Authenticate(object sender, AuthenticateEventArgs e)
    {
        /*
        string query = "Select username,password,usertype from Login where username='@username'";

        // Defining the connection and command objects
        SqlConnection connection = new SqlConnection(connec_str);
        SqlCommand comm = new SqlCommand(query, connection);
        comm.Parameters.AddWithValue("@username", EmployeeLogin.UserName);

        SqlDataReader reader;
        try
        {
            connection.Open();
            reader = comm.ExecuteReader();
            while (reader.Read())
            {
                if (reader[0].ToString() == EmployeeLogin.UserName && reader[1].ToString() == EmployeeLogin.Password &&  reader[2].ToString() == usertypeEmp.Value)
                {
                    Session["EmployeeLogin"] = EmployeeLogin.UserName.ToString();
                }
                else
                {
                    MessageBox.Show(" Please Provide Exact Employee ID and Password ");
                    EmployeeLogin.DestinationPageUrl = "~/LoginPage.aspx";
                }
                reader.Close();

            }
        }
        catch (Exception err)
        {
        }
        finally
        {
            connection.Close();
        }
   
    }
    */
    protected void EmployeeLogin_LoggedIn(object sender, EventArgs e)
    {

        Session["EmployeeLogin"] = EmployeeLogin.UserName;

    }
    protected void residentLogin_LoggedIn(object sender, EventArgs e)
    {
        Session["ResidentLogin"] = residentLogin.UserName;

    }
}