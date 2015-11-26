using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class DBManager
{
    SqlConnection editoraConnection = new SqlConnection(
        ConfigurationManager.ConnectionStrings["EditoraConnectionString"].ConnectionString);
    EditoraEntities editora = new EditoraEntities();

    public DBManager()
    {
        
    }

    public DataTable selectLike(String table, String colMatch, String match)
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM " + table + " WHERE " + colMatch + " LIKE '%" + match + "%'", editoraConnection);
        DataTable dtTable = new DataTable();
        da.Fill(dtTable);

        return dtTable;
    }

    public DataTable selectAll(String table)
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM " + table, editoraConnection);
        DataTable dtTable = new DataTable();
        da.Fill(dtTable);

        return dtTable;
    }

    public DataTable selectCriteria(String table, String col, String colMatch, String match)
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT " + col + " FROM " + table + " WHERE " + colMatch + " = '" + match + "'", editoraConnection);
        DataTable dtTable = new DataTable();
        da.Fill(dtTable);
        
        return dtTable;
    }
}