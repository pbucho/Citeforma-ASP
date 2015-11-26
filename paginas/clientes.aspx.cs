using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class paginas_clientes : System.Web.UI.Page
{
    UserManager um = new UserManager();
    DBManager dbm = new DBManager();
    EditoraEntities editora = new EditoraEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        um.logInUser("Pedro");
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!um.isUserLoggedIn())
        {
            lb_editar_clientes_login.Text = "Após iniciar sessão, pode consultar, inserir, editar e remover clientes da lista";
            lb_nome_cliente.Visible = false;
            tx_nome_pesquisa.Visible = false;
            bt_pesquisar.Visible = false;
            return;
        }

        gv_resultadoPesquisa.DataSource = dbm.selectAll("Clientes");
        gv_resultadoPesquisa.DataBind();

    }
    protected void bt_pesquisar_Click(object sender, EventArgs e)
    {
        string termo_pesquisa = tx_nome_pesquisa.Text;

        DataTable dtb = dbm.selectLike("Clientes", "nome", termo_pesquisa);
        if (dtb.DataSet == null && Page.IsPostBack)
        {
            lb_editar_clientes_login.Text = "Não existem resultados que correspondam ao critério seleccionado";
        }
        else
        {
            gv_resultadoPesquisa.DataSource = dtb;
            gv_resultadoPesquisa.DataBind();
        }
    }

    protected void bt_submeter_Click(object sender, EventArgs e)
    {
        if (!um.isUserLoggedIn())
            return;

    }

    protected void gv_resultadoPesquisa_SelectedIndexChanged(object sender, GridViewSelectEventArgs e)
    {
        //isto é no edit
        
        /*Cliente c = editora.Clientes.Find(int.Parse(gv_resultadoPesquisa.SelectedRow.Cells[1].Text));

        c.NIF = tx_nif.Text;
        c.Nome = tx_nome.Text;
        c.Morada = tx_morada.Text;
        c.CodigoPostal = tx_codigo_postal.Text;
        c.Localidade = tx_localidade.Text;
        c.Telefone = tx_telefone.Text;
        c.Email = tx_email.Text;
        c.Codigo = tx_codigo.Text;

        editora.SaveChanges();*/
    }

    protected void gv_resultadoPesquisa_SelectedIndexChanged(object sender, EventArgs e)
    {
        tx_nif.Text = gv_resultadoPesquisa.SelectedRow.Cells[1].Text;
        tx_nome.Text = gv_resultadoPesquisa.SelectedRow.Cells[2].Text;
        tx_morada.Text = gv_resultadoPesquisa.SelectedRow.Cells[3].Text;
        tx_codigo_postal.Text = gv_resultadoPesquisa.SelectedRow.Cells[4].Text;
        tx_localidade.Text = gv_resultadoPesquisa.SelectedRow.Cells[5].Text;
        tx_telefone.Text = gv_resultadoPesquisa.SelectedRow.Cells[6].Text;
        tx_email.Text = gv_resultadoPesquisa.SelectedRow.Cells[7].Text;
        tx_codigo.Text = gv_resultadoPesquisa.SelectedRow.Cells[8].Text;

    }
}