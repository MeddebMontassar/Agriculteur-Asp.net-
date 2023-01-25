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
    public partial class Ai : System.Web.UI.Page
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
            try
            {

                SqlCommand cmd = new SqlCommand("select * from agriculteur_tbl where nom_utilisateur='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Bienvenue,Inscription validée');</script>");

                        Session["nom_utilisateur"] = dr.GetValue(2).ToString();
                        Session["Nom_Prenom"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";

                    }
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Erreur de saisi,Donées Erronées');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}