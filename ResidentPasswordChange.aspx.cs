using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResidentPasswordChange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        ResidentChangePassword.UserName = string.Empty;
        ResidentPasswordChangeValidationSummary.ValidationGroup = ResidentChangePassword.UniqueID;
    }
    protected void ResidentChangePassword_ChangedPassword(object sender, EventArgs e)
    {

    }
}