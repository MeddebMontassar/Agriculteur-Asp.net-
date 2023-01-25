<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EspaceAgri.aspx.cs" Inherits="Agriculteur.Ai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
     .card{background:rgba(0,0,0,0.05);} 
        </style>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body" style="height:600px">
                         <div class="row">
                             <div class="col">
                                 <center>
                            <img src="imgs/login.jfif" width="150px" />
                                 </center>
                             </div>
                         </div>

                        <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Espace Agriculteur</h3>
                                 </center>
                             </div>
                         </div>

                        <div class="row">
                             <div class="col">
                                 <center>
                                    <hr >
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <label  style="font-weight: bold">Nom_Utilisateur</label>
                             <div class="form-group">
                                 <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Nom_Utilisateur"></asp:TextBox>
                             </div>

                                  <label  style="font-weight: bold">Mot de passe</label>
                               
                             <div class="form-group">
                                 <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Mot de passe" TextMode="Password"></asp:TextBox>
                             </div>
                                   <br/>
                                 <div class="form-group">

                                     <asp:Button  class="btn btn-success btn-block btn-lg" ID="Button1" runat="server"   Text="Connexion" OnClick="Button1_Click" />
                             </div>
                                 
                                
                                 </div>
                             </div>
                    </div>
                   

              
                </div>
                 <br />
               
                
            </div>
    </div>
        </div>
</asp:Content>
