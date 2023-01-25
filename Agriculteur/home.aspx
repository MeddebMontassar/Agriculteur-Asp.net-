<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Agriculteur.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="imgs/back3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Agriculteur Tunisien</h5>
                    <p>Bienvenue Chez Nous</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="imgs/back2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Agriculteur Tunisien</h5>
                    <p>Bienvenue Chez Nous</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="imgs/back1.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                   <h5>Agriculteur Tunisien</h5>
                    <p>Bienvenue Chez Nous</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
     <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4 style="color:black;">DÉVELOPPER LE MARCHÉ AGRICOLE</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/aidelogo.jpg" />
                        </center>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col">
                        <center>
                          <p>Pour résoudre tout type de problème liée à la protection et la nutrition de vos cultures.<strong> L'AGRICULTEUR TUNISIEN</strong> met à votre disposition notre vaste gamme de services .</p>
                        </center>
                     </div>
                  </div>
                   </div>

            </div>
                  
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4 style="color:black;">Veuillez sélectionner votre culture :</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                      <p>
  <img src="imgs/skk.png" /><a href="home2.aspx" style="text-decoration: none;color:darkslategrey;font-weight:bold">Pommier-Poirier.</a>
                      </p><br />
                     </div>
                  </div>
                     <div class="row">
                     <div class="col">
                      <p>
 <img src="imgs/skk.png" /> <a href="home2.aspx" style="text-decoration: none;color:darkslategrey;font-weight:bold">Maies.</a>
                      </p><br />
                     </div>
                  </div>
                     <div class="row">
                     <div class="col">
                      <p>
  <img src="imgs/skk.png" /><a href="home2.aspx" style="text-decoration: none;color:darkslategrey;font-weight:bold">Pécher-Abricotier.</a>
                      </p><br />
                     </div>
                  </div>
                  

               </div>
            </div>
         </div>
      </div>
   </div>
   
</asp:Content>
