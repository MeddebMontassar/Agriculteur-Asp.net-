using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace Agriculteur
{
    public partial class Test : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-118JHS5S\SQLEXPRESS;Initial Catalog=AgriculteurDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
            con.Open();
            GridView1.DataBind();
        }

    }
}