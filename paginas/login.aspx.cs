using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class paginas_login : System.Web.UI.Page
{
    SqlConnection editoraConnection = new SqlConnection(
        ConfigurationManager.ConnectionStrings["EditoraConnectionString"].ConnectionString);
    UserManager um = new UserManager();

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        um.logInUser("Sergio");
        Response.Redirect("/Default.aspx");
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        String sqlCommand = "SELECT NIF FROM Clientes WHERE NIF=\"" + Login1.UserName + "\"";
        // como nao temos passwords na bd, apenas interessa o nif

        SqlCommand sql = new SqlCommand();
        sql.CommandType = CommandType.Text;
        sql.Connection = editoraConnection;
        sql.CommandText = sqlCommand;

        editoraConnection.Open();
        int val = sql.ExecuteNonQuery();
        editoraConnection.Close();

        if(val == 1)
        {
            // sucesso
        }
        else
        {
            // falha
            um.logInUser(Login1.UserName);
            Response.Redirect("Default.aspx");
        }
    }
}