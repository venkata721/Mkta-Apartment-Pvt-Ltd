using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;
public partial class CreateResidentProfile : System.Web.UI.Page
{
    private static string connec_str = WebConfigurationManager.ConnectionStrings["RealEstateDBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void CreateResidentForm_ContinueButtonClick(object sender, EventArgs e)
    {
        string insertUserSQL = " Insert INTO EstateResidentsTable (" +
            " email,secque,secqueanswer,username,password) " +
            "VALUES (" +
            "@email,@secque,@secqueanswer,@username,@password);";
        
        
        SqlConnection con = new SqlConnection(connec_str);
        SqlCommand commUser = new SqlCommand(insertUserSQL, con);
        int useradded= 0;

        commUser.Parameters.AddWithValue("@email", CreateResidentForm.Email);
        commUser.Parameters.AddWithValue("@secque", CreateResidentForm.Question);
        commUser.Parameters.AddWithValue("@secqueanswer", CreateResidentForm.Answer);
        commUser.Parameters.AddWithValue("@username", CreateResidentForm.UserName);
        commUser.Parameters.AddWithValue("@password", CreateResidentForm.Password);

       
            con.Open();
            useradded = commUser.ExecuteNonQuery();
            con.Close();

    }

}