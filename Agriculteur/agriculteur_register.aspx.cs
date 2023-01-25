using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Agriculteur
{
    public partial class agriculteur_register : System.Web.UI.Page
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

        
        
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Membre déja existe,Retapez encore !!');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");

            SqlCommand cmd = new SqlCommand("INSERT INTO agriculteur_tbl(agriculteur_id,nom_prenom,nom_utilisateur,password,date_naissance) values(@agriculteur_id,@nom_prenom,@nom_utilisateur,@password,@date_naissance)", con);
            cmd.Parameters.AddWithValue("@nom_prenom", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@nom_utilisateur", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@date_naissance", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@password", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@agriculteur_id", TextBox5.Text.Trim());
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Registration Valider.Vous pouvez se connecter maintenant');</script>");
        }
        bool checkMemberExists()
        {

            SqlCommand cmd = new SqlCommand("SELECT * from agriculteur_tbl where agriculteur_id='" + TextBox5.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }

}

    // user defined method
   
        


