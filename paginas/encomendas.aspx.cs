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
            lb_editar_encomendas_login.Text = "Após iniciar sessão, pode consultar, fazer, alterar e cancelar encomendas";
            lb_nif_cliente.Visible = false;
            tx_nif.Visible = false;
            lb_data_encomenda.Visible = false;
            cal_encomenda.Visible = false;
            bt_pesquisar.Visible = false;
            return;
        }

        if (!Page.IsPostBack)
        {
            gv_resultadoPesquisa.DataSource = dbm.selectAll("Clientes");
        }
        else
        {
            gv_resultadoPesquisa.DataSource = null;
        }
        gv_resultadoPesquisa.DataBind();

    }
    protected void bt_pesquisar_Click(object sender, EventArgs e)
    {
        string termo_pesquisa = tx_nif.Text;
        DateTime data_pesquisa = cal_encomenda.SelectedDate;

        DataTable dtb = null;
        if (termo_pesquisa != "")
        {
            dtb = dbm.selectCriteria("Encomendas", "*", "NIFCliente", termo_pesquisa);
        }
        else if (data_pesquisa.Year < 100)
        {
            dtb = dbm.selectCriteria("Encomendas", "*", "Data", data_pesquisa.ToString("yyyy-mm-dd"));
        }

        if (dtb.DataSet == null && Page.IsPostBack)
        {
            lb_editar_encomendas_login.Text = "Não existem resultados que correspondam ao critério seleccionado";
        }
        else
        {
            gv_resultadoPesquisa.DataSource = dtb;
            gv_resultadoPesquisa.DataBind();
        }
    }
}