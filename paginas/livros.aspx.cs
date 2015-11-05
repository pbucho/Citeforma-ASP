using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.CommandType;
using System.Configuration;

public partial class paginas_livros : System.Web.UI.Page
{
    SqlConnection editoraConnection = new SqlConnection(
        ConfigurationManager.ConnectionStrings["EditoraConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void bt_pesquisar_Click(object sender, EventArgs e)
    {
        string termo_pesquisa = tx_titulo.Text;

        SqlCommand sql = new SqlCommand();
        sql.CommandType = CommandType.Text;
        sql.Connection = editoraConnection;
        sql.CommandText = "SELECT * FROM dbo.Livros WHERE titulo LIKE '%"+termo_pesquisa+"%';";

        editoraConnection.Open();
        sql.ExecuteNonQuery();
        editoraConnection.Close();

        gv_resultadoPesquisa.DataSource();
    }
}