using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Agriculteur
{
    public partial class Planning : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["AgriculteurDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            GridView2.DataBind();
        }
        public void ajouter()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Planning (Evenement,Date_Debut,Date_Fin,Description) values(@Evenement,@Date_Debut,@Date_Fin,@Description)", con);
                cmd.Parameters.AddWithValue("@Evenement", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Date_Debut", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Date_Fin", TextBox4.Text.Trim());
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
        //buton ajout
       
        
        //buton delete
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkEventExists())
            {
                deletePublisherByID();
            }
            else
            {
                Response.Write("<script>alert('Event avec cette ID n'existe pas');</script>");
            }
            Response.Redirect("Planning.aspx");

        }
        void geteventByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Planning where Evenement_ID='" + TextBox6.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox1.Text = dt.Rows[0][1].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Event avec cette ID n'existe pas');</script>");
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

                SqlCommand cmd = new SqlCommand("SELECT * from Planning  where Evenement_ID='" + TextBox6.Text.Trim() + "';", con);
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
       
        public void deletePublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("Delete from Planning  where Evenement_ID='" + TextBox6.Text.Trim() + "'", con);
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Event supprimé avec succée');</script>");
                    
                }
                else
                {
                    Response.Write("<script>alert('Event avec ctte Id n'existe pas');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //go button
        protected void Button2_Click(object sender, EventArgs e)
        {
            geteventByID();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44363/Home/Index");
        }

        protected void Button1_Click(object sender, EventArgs e)
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
    }
}