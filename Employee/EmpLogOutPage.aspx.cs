﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Linq;

using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmpLogOutPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
    }
}