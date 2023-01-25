using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Agriculteur
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] != null)
                {
                    if (Session["role"].Equals(""))
                    {
                        LinkButton8.Visible = false;//QuiSomme nous button 
                        LinkButton5.Visible = false;//Aceuil buton
                        LinkButton2.Visible = true;//Espace agri
                        LinkButton1.Visible = false; // services button

                        LinkButton3.Visible = false; // logout link button
                        LinkButton7.Visible = false; // hello user link button


                        LinkButton11.Visible = true; // admin login link button

                        LinkButton4.Visible = false;//creation des comptes.
                        LinkButton10.Visible = false;//gestion des comptes.
                        LinkButton12.Visible = true;//s'inscrire

                    }
                    else if (Session["role"].Equals("user"))
                    {
                        LinkButton8.Visible = true;//QuiSomme nous button 
                        LinkButton5.Visible = true;//Aceuil buton
                        LinkButton2.Visible = false;//Espace agri
                        LinkButton1.Visible = true; //services button

                        LinkButton3.Visible = true; // logout link button
                        LinkButton7.Visible = true; // hello user link button
                        LinkButton7.Text = "Hello " + Session["nom_utilisateur"].ToString();


                        LinkButton11.Visible = true; // admin login link button

                        LinkButton4.Visible = false;//creation des comptes.
                        LinkButton10.Visible = false;//gestion des comptes.
                        LinkButton12.Visible = false;//s'inscrire

                    }
                    else if (Session["role"].Equals("admin"))
                    {
                        LinkButton8.Visible = true;//QuiSomme nous button 
                        LinkButton5.Visible = true;//acceuil buton
                        LinkButton2.Visible = false;//Espace agri
                        LinkButton1.Visible = true; // services button

                        LinkButton3.Visible = true; // logout link button
                        LinkButton7.Visible = true; // hello user link button
                        LinkButton10.Visible = true;// gerer les comptes Link
                        LinkButton11.Visible = true; // admin login link button

                        LinkButton4.Visible = true;//creation des comptes
                        LinkButton7.Text = "Hello Admin";
                        LinkButton12.Visible = false;//s'inscrire


                        LinkButton11.Visible = true; // admin login link button

                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Planning.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EspaceAgri.aspx");
        }


        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("agriculteur_register.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
           
                Session["nom_utilisateur"] = "";
                Session["nom_prenom"] = "";
                Session["role"] = "";
            LinkButton2.Visible = true; // user login link button
            LinkButton12.Visible = true; // sign up link button

                LinkButton3.Visible = false; // logout link button
                LinkButton7.Visible = false; // hello user link button
                

                LinkButton11.Visible = true; // admin login link button
                Response.Redirect("EspaceAgri.aspx");

            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ai.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("InventoryPesticide.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("GererCompte.aspx");
        }
    }
}