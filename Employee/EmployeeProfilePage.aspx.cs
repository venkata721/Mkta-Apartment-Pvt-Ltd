using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Linq;
using System.Windows.Forms;
public partial class EmployeeProfilePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
      
      if (Session["EmployeeLogin"] != null)
        {

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script> Please Provide Your Exact Login Details </script>");
            Server.Transfer("~/LoginPage.aspx");
          
        }
        
    }
}