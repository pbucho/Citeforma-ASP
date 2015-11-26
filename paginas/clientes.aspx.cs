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
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!um.isUserLoggedIn())
        {
            lb_editar_clientes_login.Text = "Após iniciar sessão, pode consultar, inserir, editar e remover clientes da lista";
            lb_nome_cliente.Visible = false;
            tx_nome_pesquisa.Visible = false;
            bt_pesquisar.Visible = false;
            return;
        }

        updateGridView();

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
        GridViewRow row = gv_resultadoPesquisa.SelectedRow;
        Cliente cAntigo = null;
        if (row != null)
        {
            cAntigo = editora.Clientes.Find(row.Cells[1].Text);
        }
        Cliente cNovo = new Cliente();

        cNovo.NIF = tx_nif.Text;
        cNovo.Nome = tx_nome.Text;
        cNovo.Morada = tx_morada.Text;
        cNovo.CodigoPostal = tx_codigo_postal.Text;
        cNovo.Localidade = tx_localidade.Text;
        cNovo.Telefone = tx_telefone.Text;
        cNovo.Email = tx_email.Text;
        cNovo.Codigo = tx_codigo.Text;

        if (cAntigo != null)
        {
            editora.Clientes.Remove(cAntigo);
        }
        editora.Clientes.Add(cNovo);
        editora.SaveChanges();

        updateGridView();
    }

    protected void gv_resultadoPesquisa_SelectedIndexChanged(object sender, GridViewSelectEventArgs e)
    {
        
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

    protected void lbt_eliminar_Click(object sender, EventArgs e)
    {
        GridViewRow row = gv_resultadoPesquisa.SelectedRow;
        if(row == null)
        {
            return;
        }

        TableCell cell = row.Cells[1];

        Cliente cAntigo = editora.Clientes.Find(cell.Text);
        editora.Clientes.Remove(cAntigo);
        editora.SaveChanges();

        updateGridView();
    }

    protected void updateGridView()
    {
        gv_resultadoPesquisa.DataSource = dbm.selectAll("Clientes");
        gv_resultadoPesquisa.DataBind();
    }

    protected void gv_resultadoPesquisa_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = gv_resultadoPesquisa.SelectedRow;
        if (row == null)
        {
            return;
        }

        TableCell cell = row.Cells[1];

        Cliente cAntigo = editora.Clientes.Find(cell.Text);
        editora.Clientes.Remove(cAntigo);
        editora.SaveChanges();

        updateGridView();
    }
}