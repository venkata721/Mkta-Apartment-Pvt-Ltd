﻿using System;
using System.Collections.Generic;
using System.Linq;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
public partial class EmpContactUsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (Session["EmployeeLogin"] != null)
        {

        }
        else
        {
            Server.Transfer("~/LoginPage.aspx");
        }
     
    }
}