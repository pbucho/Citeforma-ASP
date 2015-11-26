using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master1 : System.Web.UI.MasterPage
{

    UserManager um = new UserManager();

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (um.isUserLoggedIn())
        {
            // mostrar username
            login_status.Text = "Olá, " + um.getUsername();
            log_user.Text = "Terminar sessão";
        }
        else
        {
            // mostrar "olá anónimo"
            login_status.Text = "Olá, anónimo";
            log_user.Text = "Iniciar sessão";
        }
    }

    protected void log_user_Click(object sender, EventArgs e)
    {
        if (!um.isUserLoggedIn())
        {
            Response.Redirect("/paginas/login.aspx");
        }
        else
        {
            Response.Redirect("/paginas/logout.aspx");
        }
    }
}
