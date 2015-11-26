using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_autores : System.Web.UI.Page
{
    UserManager um = new UserManager();
    DBManager dbm = new DBManager();
    EditoraEntities editora = new EditoraEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!um.isUserLoggedIn())
        {
            lb_editar_autores_login.Text = "Após iniciar sessão, pode inserir, editar e remover autores da lista";
        }
        updateGridView();
    }

    protected void bt_pesquisar_Click(object sender, EventArgs e)
    {
        string termo_pesquisa = tx_autor.Text;

        gv_autores.DataSource = dbm.selectLike("Autores", "Nome", termo_pesquisa);
        gv_autores.DataBind();
    }

    protected void bt_submeter_Click(object sender, EventArgs e)
    {
        GridViewRow row = gv_autores.SelectedRow;
        Autore aAntigo = null;
        if (row != null)
        {
            aAntigo = editora.Autores.Find(row.Cells[1].Text);
        }
        Autore aNovo = new Autore();

        aNovo.IDAutor = int.Parse(tx_id.Text);
        aNovo.Nome = tx_nome.Text;
        aNovo.PaisOrigem = tx_pais.Text;
        aNovo.ResumoObra = tx_resumo.Text;
        aNovo.PremioNobel = chk_nobel.Checked;

        if (aAntigo != null)
        {
            editora.Autores.Remove(aAntigo);
        }
        editora.Autores.Add(aNovo);
        editora.SaveChanges();

        updateGridView();
    }

    protected void updateGridView()
    {
        gv_autores.DataSource = dbm.selectAll("Autores");
        gv_autores.DataBind();
    }

    protected void lbt_eliminar_Click(object sender, EventArgs e)
    {
        GridViewRow row = gv_autores.SelectedRow;
        if (row == null)
        {
            return;
        }

        TableCell cell = row.Cells[1];

        Autore aAntigo = editora.Autores.Find(int.Parse(cell.Text));
        editora.Autores.Remove(aAntigo);
        editora.SaveChanges();

        updateGridView();
    }

    protected void gv_autores_SelectedIndexChanged(object sender, EventArgs e)
    {

        tx_id.Text = gv_autores.SelectedRow.Cells[1].Text;
        tx_nome.Text = gv_autores.SelectedRow.Cells[2].Text;
        tx_pais.Text = gv_autores.SelectedRow.Cells[3].Text;
        tx_resumo.Text = gv_autores.SelectedRow.Cells[5].Text;

        Control c = gv_autores.SelectedRow.Cells[4].Controls[0];

        if (c != null)
        {
            CheckBox ch = (CheckBox)c;
            chk_nobel.Checked = ch.Checked;
        }

    }
}