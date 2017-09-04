using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


public partial class ResidentPaymentPage : System.Web.UI.Page
{
    string creditCardNum, creditCardName, creditCardCVV, creditCardExpDate;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        UserNameText.Text = Session["ResidentLogin"].ToString();
        PaymentAmount.Text = Session["PaymentAmount"].ToString();
        PaymentDate.Text = DateTime.Now.ToString();
        

    }   
    protected void makePaymentButton_Click(object sender, EventArgs e)
    {
        Session["creditCardNum"] = CreditCardNo.Text;
        Session["creditCardName"] = CreditCardName.Text;
        Session["creditCardCVV"] = CreditCardCVV.Text;
        Session["creditCardExpDate"] = CreditCardExpMonth.Text + "/" + CreditCardExpYear.Text;
             Random rnd = new Random();
            int num = rnd.Next(000000000, 999999999);
        string number = num.ToString("000000000");
        Session["ConfirmationNumber"] = number;
        Server.Transfer("~/ResidentPaymentConfirmation.aspx");
    }
protected void clearButton_Click(object sender, EventArgs e)
{
    CreditCardNo.Text = string.Empty;
    CreditCardName.Text= string.Empty;
    CreditCardCVV.Text = string.Empty;
    CreditCardCVV.Text = string .Empty;
}
}
