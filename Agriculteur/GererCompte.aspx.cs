using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agriculteur
{
    public partial class GererCompte : System.Web.UI.Page
    {
        
        string strcon = ConfigurationManager.ConnectionStrings["AgriculteurDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go btn
        protected void Button1_Click(object sender, EventArgs e)
        {
            getMemberID();
        }
        void getMemberID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from agriculteur_tbl where agriculteur_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox3.Text = dr.GetValue(1).ToString();
                        TextBox4.Text = dr.GetValue(2).ToString();
                        TextBox5.Text = dr.GetValue(3).ToString();
                    }

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
        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from  agriculteur_tbl where agriculteur_id='" + TextBox1.Text.Trim() + "';", con);
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
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void deleteMemberByID()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from agriculteur_tbl where agriculteur_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Agriculteur Supprimé');</script>");
                    clearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert(' Membre ID est invalide');</script>");
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            deleteMemberByID();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}