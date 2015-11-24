using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_autores : System.Web.UI.Page
{
    UserManager um = new UserManager();
    SqlConnection editoraConnection = new SqlConnection(
        ConfigurationManager.ConnectionStrings["EditoraConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!um.isUserLoggedIn())
        {
            lb_editar_autores_login.Text = "Após iniciar sessão, pode inserir, editar e remover autores da lista";
        }
    }

    protected void bt_pesquisar_Click(object sender, EventArgs e)
    {
        string termo_pesquisa = tx_autor.Text;

        SqlCommand sql = new SqlCommand();
        sql.CommandType = CommandType.Text;
        sql.Connection = editoraConnection;
        sql.CommandText = "SELECT * FROM dbo.Autores WHERE nome LIKE '%" + termo_pesquisa + "%';";

        editoraConnection.Open();
        sql.ExecuteNonQuery();
        editoraConnection.Close();
    }
}