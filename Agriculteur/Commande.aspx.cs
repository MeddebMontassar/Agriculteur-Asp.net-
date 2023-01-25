using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agriculteur
{
    public partial class Commande : System.Web.UI.Page
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

        //bouton envoyer
        protected void Button2_Click(object sender, EventArgs e)
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

            SqlCommand cmd = new SqlCommand("INSERT INTO Issue_tbl(Pesticide_Nom,issue_date) values(@Pesticide_Nom,@issue_date)", con);
            cmd.Parameters.AddWithValue("@Pesticide_Nom", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@issue_date", TextBox6.Text.Trim());
           
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Commande Envoyer Avec Succé');</script>");
            GridView1.DataBind();
        }
        bool checkMemberExists()
        {

            SqlCommand cmd = new SqlCommand("SELECT * from Issue_tbl where Pesticide_Nom='" + TextBox2.Text.Trim() + "';", con);
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