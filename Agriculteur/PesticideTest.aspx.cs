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
    public partial class PesticideTest : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["AgriculteurDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        //ajout
      
        //modifier
      
        //supprimer
       
        //go
       
        void geteventByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Pesticide where Pesticide_ID='" + TextBox6.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Pesticide avec cette ID n'existe pas');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        bool checkEventExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Pesticide  where Pesticide_ID='" + TextBox6.Text.Trim() + "';", con);
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
        void ajouter()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Pesticide Composition,Mode_Action,Utilisation,Dose_Emploi,Nom_Pesticide,Description) values(@Composition,@Mode_Action,@Utilisation,@Dose_Emploi,@Nom_Pesticide,,@Description)", con);
                cmd.Parameters.AddWithValue("@Composition", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Mode_Action", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Utilisation", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Dose_Emploi", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Nom_Pesticide", TextBox1.Text.Trim());

                cmd.Parameters.AddWithValue("@Description", TextBox5.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Ajout avec succée');</script>");
                GridView2.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        public void updateEventByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("update Pesticide set Composition= @Composition  Mode_Action=@Mode_Action Utilisation=@Utilisation Dose_Emploi=@Dose_Emploi Nom_Pesticide=@Nom_Pesticide Description=@Description WHERE Event_ID='" + TextBox6.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@Composition", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Mode_Action", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Utilisation", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Dose_Emploi", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Nom_Pesticide", TextBox1.Text.Trim());
                
                cmd.Parameters.AddWithValue("@Description", TextBox5.Text.Trim());
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Event Modifié avec succée');</script>");
                    GridView2.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Event avec cette Id n'existe pas');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        public void deletePublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("Delete from Pesticide  where Pesticide_ID='" + TextBox6.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Pesticide supprimé avec succée');</script>");
                    GridView2.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Pesticide avec ctte Id n'existe pas');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //ajout
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (checkEventExists())
            {
                Response.Write("<script>alert('Event avec cette ID n'existe pas.');</script>");
            }
            else
            {
                ajouter();
            }
        }
        

        //modifier
        protected void Button3_Click1(object sender, EventArgs e)
        {
            if (checkEventExists())
            {
                updateEventByID();
            }
            else
            {
                Response.Write("<script>alert('Event avec cette ID n'existe pas');</script>");
            }
        }
        

        //supprimer

        protected void Button4_Click1(object sender, EventArgs e)
        {
            if (checkEventExists())
            {
                deletePublisherByID();
            }
            else
            {
                Response.Write("<script>alert('Event avec cette ID n'existe pas');</script>");
            }
            
        }
        //go
        protected void Button2_Click(object sender, EventArgs e)
        {
            geteventByID();
        }
    }

}