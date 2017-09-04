using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class ResidentPaymentConfirmation : System.Web.UI.Page
{
    private static string connec_str = WebConfigurationManager.ConnectionStrings["RealEstateDBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        UserNameText.Text = Session["ResidentLogin"].ToString();
        PaymentAmount.Text = Session["PaymentAmount"].ToString();
        PaymentDate.Text = DateTime.Now.ToString();
        CreditCardNo.Text = Session["creditCardNum"].ToString();
        CreditCardName.Text = Session["creditCardName"].ToString();
        CreditCardCVV.Text = Session["creditCardCVV"].ToString();
        CreditCardExpDate.Text = Session["creditCardExpDate"].ToString();
        CreditCardNo.ReadOnly = true;
        CreditCardName.ReadOnly = true;
        CreditCardCVV.ReadOnly = true;
        CreditCardExpDate.ReadOnly = true;
    }
    protected void confirmPaymentButton_Click(object sender, EventArgs e)
    {
        confirmPaymentButton.Text = " Close ";
        confirmPaymentButton.PostBackUrl="~/ResidentProfilePage.aspx";
        ConfirmationNumberLabel.Visible = true;
        ConfirmationNumberValue.Visible = true;
        updateFundsTableForUser();
        ConfirmationNumberValue.Text = "Your Confirmation Number: " + Session["ConfirmationNumber"].ToString();


    }

    protected void updateFundsTableForUser()
    {
        string updateSQL = " Update EstateFundsTable SET " +
      "PaymentAmount = @PaymentAmount,PaymentDate=@PaymentDate,Status=@Status,ConfirmationNumber=@ConfirmationNumber" +
      " where username = '" + Session["ResidentLogin"].ToString() + "';";



        SqlConnection con = new SqlConnection(connec_str);
        SqlCommand comm = new SqlCommand(updateSQL, con);

        comm.Parameters.AddWithValue("@PaymentAmount", "0.00");
        comm.Parameters.AddWithValue("@PaymentDate", DateTime.Now.ToString());
        comm.Parameters.AddWithValue("@Status", "PAID");
        comm.Parameters.AddWithValue("@ConfirmationNumber", Session["ConfirmationNumber"].ToString());

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
}