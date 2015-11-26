using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class paginas_autores : System.Web.UI.Page
{
    UserManager um = new UserManager();
    DBManager dbm = new DBManager();

    protected void Page_Load(object sender, EventArgs e)
    {
        um.logInUser("Pedro");
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!um.isUserLoggedIn())
        {
            lb_editar_autores_login.Text = "Após iniciar sessão, pode inserir, editar e remover autores da lista";

            gridview_autores.DataSource = dbm.selectAll("Autores");
            gridview_autores.DataBind();
        }
    }

    protected void bt_pesquisar_Click(object sender, EventArgs e)
    {
        string termo_pesquisa = tx_autor.Text;

        gridview_autores.DataSource = dbm.selectLike("Autores", "Nome", termo_pesquisa);
        gridview_autores.DataBind();
    }
}