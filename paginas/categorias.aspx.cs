using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class paginas_categorias : System.Web.UI.Page
{
    UserManager um = new UserManager();
    DBManager dbm = new DBManager();
    EditoraEntities editora = new EditoraEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!um.isUserLoggedIn())
        {
            lb_editar_categorias_login.Text = "Após iniciar sessão, pode consultar, inserir, editar e remover clientes da lista";
            lb_nome_categoria.Visible = false;
            tx_nome_pesquisa.Visible = false;
            bt_pesquisar.Visible = false;
            return;
        }

        updateGridView();

    }
    protected void bt_pesquisar_Click(object sender, EventArgs e)
    {
        string termo_pesquisa = tx_nome_pesquisa.Text;

        //DataTable dtb = dbm.selectLike("Clientes", "nome", termo_pesquisa);
        DataTable dtb = dbm.executeSQL("SELECT Categorias.Categoria, Livros.Titulo FROM Categorias, Livros WHERE Categorias.IDCategoria = (SELECT Categorias.IDCategoria FROM Categorias WHERE Categorias.Categoria = '"+termo_pesquisa+"')");
        if (dtb.DataSet == null && Page.IsPostBack)
        {
            lb_editar_categorias_login.Text = "Não existem resultados que correspondam ao critério seleccionado";
        }
        else
        {
            gv_categorias.DataSource = dtb;
            gv_categorias.DataBind();
        }
    }

    protected void bt_submeter_Click(object sender, EventArgs e)
    {
        GridViewRow row = gv_categorias.SelectedRow;
        Categoria cAntigo = null;
        if (row != null)
        {
            cAntigo = editora.Categorias.Find(int.Parse(row.Cells[1].Text));
        }
        Categoria cNovo = new Categoria();

        cNovo.IDCategoria = int.Parse(tx_id.Text);
        cNovo.Categoria1 = tx_nome.Text;
        cNovo.Descricao = tx_descricao.Text;

        editora.Categorias.Add(cNovo);
        editora.SaveChanges();

        updateGridView();
    }

    protected void gv_resultadoPesquisa_SelectedIndexChanged(object sender, GridViewSelectEventArgs e)
    {

    }

    protected void gv_categorias_SelectedIndexChanged(object sender, EventArgs e)
    {
        tx_id.Text = gv_categorias.SelectedRow.Cells[1].Text;
        tx_nome.Text = gv_categorias.SelectedRow.Cells[2].Text;
        tx_descricao.Text = gv_categorias.SelectedRow.Cells[3].Text;

    }

    protected void lbt_eliminar_Click(object sender, EventArgs e)
    {
        GridViewRow row = gv_categorias.SelectedRow;
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

    protected void updateGridView()
    {
        gv_categorias.DataSource = dbm.selectAll("Categorias");
        gv_categorias.DataBind();
    }

    protected void gv_resultadoPesquisa_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = gv_categorias.SelectedRow;
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