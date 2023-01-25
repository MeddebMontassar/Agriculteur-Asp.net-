using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Agriculteur
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-118JHS5S\SQLEXPRESS;Initial Catalog=AgriculteurDB;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();

                }
                con.Open();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from admin_tbl where login='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Successful login');</script>");
                    Session["login"] = dr.GetValue(1).ToString();
                    Session["fullname"] = dr.GetValue(2).ToString();
                    Session["role"] = "admin";
                    //Session["status"] = dr.GetValue(10).ToString();
                }
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }

        }
          
}
}