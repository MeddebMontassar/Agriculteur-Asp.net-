using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace Agriculteur
{
    public partial class InventoryPesticide : System.Web.UI.Page
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
                GridView2.DataBind();

            }
             
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
           // getBookByID();
        }


        // update button click
       
        // add button click
        


        // user defined functions

        void deleteBookByID()
        {
            if (checkIfBookExists())
            {
                try
                {
                    
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from Pesticide WHERE Pesticide_ID='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Pesticide Supprimer avec Succéé');</script>");

                    GridView2.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Pesticide Invalid !!');</script>");
            }
        }

        //GO button
        protected void Button4_Click1(object sender, EventArgs e)
        {
            getBookByID();
        }
        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateBookByID();
        }
        //supprimer
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteBookByID();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkIfBookExists())
            {
                Response.Write("<script>alert('Pesticide Existe Déja, Essayer Encore !!');</script>");
            }
            else
            {
                addNewBook();
            }

        }

        bool checkIfBookExists()
        {
            try
            {
              
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Pesticide where Pesticide_ID='" + TextBox1.Text.Trim() + "' OR Nom_Pesticide='" + TextBox2.Text.Trim() + "';", con);
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


        void getBookByID()
        {
            try
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Pesticide where Pesticide_ID ='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                   
                    
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

        void updateBookByID()
        {

            if (checkIfBookExists())
            {
                try
                {
                  
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }


                    SqlCommand cmd = new SqlCommand("update Pesticide set Composition=@Composition Mode_Action=@Mode_Action Utilisation=@Utilisation Dose_Emploi=@Dose_Emploi Nom_Pesticide=@Nom_Pesticide Categorie=@Categorie Description=@Description WHERE Pesticide_ID='" + TextBox1.Text.Trim() + "'", con);
                    cmd.Parameters.AddWithValue("@Pesticide_ID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Nom_Pesticide", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@Composition", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Mode_Action", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@Utilisation", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@Dose_Emploi", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Description", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@Categorie", DropDownList1.SelectedItem.Value);
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    if (result > 0)
                    {

                        Response.Write("<script>alert('Pesticide Modifié avec succée');</script>");
                        GridView2.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('Pesticide avec cette Id n'existe pas');</script>");
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID');</script>");
            }
        }

        void addNewBook()
        {
            try
            {
                string filepath = "~/Pesticidesimpgs/pest2.jpg";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Pesticidesimpgs/" + filename));
                filepath = "~/Pesticidesimpgs/" + filename;


               
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Pesticide (Composition,Mode_Action,Utilisation,Dose_Emploi,Nom_Pesticide,Image,Categorie,Description) values(@Composition,@Mode_Action,@Utilisation,@Dose_Emploi,@Nom_Pesticide,@Image,@Categorie,@Description)", con);

               
               
                cmd.Parameters.AddWithValue("@Composition", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Mode_Action", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Utilisation", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Dose_Emploi", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Nom_Pesticide", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Image", filepath);
                cmd.Parameters.AddWithValue("@Categorie", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Description", TextBox6.Text.Trim());
                
               

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Pesticide Ajouté Avec Succé .');</script>");
                GridView2.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
       
    }

    /*  try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Planning (Article,Qté_Lancement,Date_Debut,Date_Fin,Description) values(@Article,@Qté_Lancement,@Date_Debut,@Date_Fin,@Description)", con);
                cmd.Parameters.AddWithValue("@Article", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Qté_Lancement", TextBox2.Text.Trim());
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
*/

    /// <summary>




    /*void fillAuthorPublisherValues()
     {
         try
         {
             SqlConnection con = new SqlConnection(strcon);
             if (con.State == ConnectionState.Closed)
             {
                 con.Open();
             }
             SqlCommand cmd = new SqlCommand("SELECT author_name from author_master_tbl;", con);
             SqlDataAdapter da = new SqlDataAdapter(cmd);
             DataTable dt = new DataTable();
             da.Fill(dt);


             cmd = new SqlCommand("SELECT publisher_name from publisher_master_table;", con);
             da = new SqlDataAdapter(cmd);
             dt = new DataTable();
             da.Fill(dt);


         }
         catch (Exception ex)
         {

         }
     }*/




}