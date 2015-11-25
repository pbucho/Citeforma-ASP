using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class paginas_livros : System.Web.UI.Page
{
    UserManager um = new UserManager();
    DBManager dbm = new DBManager();

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!um.isUserLoggedIn())
        {
            lb_editar_livros_login.Text = "Após iniciar sessão, pode inserir, editar e remover livros da lista";
        }

        if (!Page.IsPostBack)
        {
            gv_resultadoPesquisa.DataSource = dbm.selectAll("Livros");
        }else
        {
            gv_resultadoPesquisa.DataSource = null;
        }
        gv_resultadoPesquisa.DataBind();

    }
    protected void bt_pesquisar_Click(object sender, EventArgs e)
    {
        string termo_pesquisa = tx_titulo.Text;

        DataTable dtb = dbm.selectLike("dbo.Livros", "titulo", termo_pesquisa);
        if (dtb.DataSet == null && Page.IsPostBack)
        {
            lb_editar_livros_login.Text = "Não existem resultados que correspondam ao critério seleccionado";
        }
        else
        {
            gv_resultadoPesquisa.DataSource = dtb;
            gv_resultadoPesquisa.DataBind();
        }
    }
}