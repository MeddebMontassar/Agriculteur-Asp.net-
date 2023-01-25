<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GererCompte.aspx.cs" Inherits="Agriculteur.GererCompte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card" >
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Gestion des comptes agriculteur</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/login.jfif" width="100px" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     
                     <div class="col-md-6">
                        <label>ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Agriculteur ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nom_Prenom</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Nom_Prenom" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Nom_Utilisateur</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Nom_Utilisateur" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Date_de_Naissance </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Date de Naissance" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                      <!--
                     <div class="col-md-6">
                        <label>End Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>-->
                  </div>
                 <div class="row">
                     <div class="col-8 mx-auto">
                       <asp:Button ID="Button3" runat="server" Text="Effacer Agriculteur" class="btn btn-lg btn-block btn-danger" OnClick="Button3_Click1" />
                     </div>

                    <div class="col-8 mx-auto">
                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-lg btn-block btn-warning" OnClick="LinkButton1_Click">Changer Mot de Passe</asp:LinkButton>
                     </div>
                     

                  </div>
               </div>
            </div>
            <a href="home.aspx"><< Retourer a la page d'acceuill</a><br>
            <br>
         </div>
           <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Liste des Agriculteurs :</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AgriculteurDBConnectionString %>" SelectCommand="SELECT * FROM [agriculteur_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="agriculteur_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="agriculteur_id" HeaderText="agriculteur_id" ReadOnly="True" SortExpression="agriculteur_id" />
                                <asp:BoundField DataField="nom_prenom" HeaderText="nom_prenom" SortExpression="nom_prenom" />
                                <asp:BoundField DataField="nom_utilisateur" HeaderText="nom_utilisateur" SortExpression="nom_utilisateur" />
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                <asp:BoundField DataField="date_naissance" HeaderText="date_naissance" SortExpression="date_naissance" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
           </div>
               </div>
        
</asp:Content>
