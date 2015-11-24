﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_login : System.Web.UI.Page
{
    UserManager um = new UserManager();

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!Request.IsAuthenticated)
        {
            Response.Redirect("paginas/login.aspx");
        }
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        um.logOutUser();
        Response.Redirect("paginas/login.aspx");
    }
}