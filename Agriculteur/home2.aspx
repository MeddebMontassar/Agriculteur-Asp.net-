<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home2.aspx.cs" Inherits="Agriculteur.WebForm3" %>
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
    <!--- Carousel -->
    <!--- Middle Contents -->
    <div class="container center">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2 style="color:limegreen;">VOUS AVEZ
BESOIN D'AIDE!</h2>
                  <p><b>L'agriculteur Tunisien vous offre la solution </b></p>
               </center>
            </div>
         </div>

  <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/dd.jpg" />
                  <h4>Votre guide agricole</h4>
                  <p class="text-justify">Notre plateforme sera votre guide quotidient pour un meilleur produit agricole: agrumes, fruits, légumes, des oliviers et des vignes et Céréales.</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/tik.jpg"/>
                  <h4>Avoir la bonne décision</h4>
                  <p class="text-justify">Notre plateforme va vous fournir la bonne décision ,le bon choix et la meilleure strategie pour une meilleure agriculture</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="imgs/h1.png"/>
                  <h4>Un produit agricole parfait</h4>
                  <p class="text-justify">Notre objectif principal c'est de valoriser la production, sécuriser la commercialisation et améliorer la communication au seins du domaine</p>
               </center>
            </div>
         </div>
          <div class="row">
            <div class="col-12">
               <center>
                  <h2 style="color:limegreen;">Nos Catalogues</h2>
                  <p><b>Cliquer pour visiter</b></p>
               </center>
            </div>
         </div>

        <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="imgs/irrigation.jfif" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">Irrigation</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="Irrigationhome1.aspx" class="btn btn-primary">Plus De Détail</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="imgs/pesticide.jfif" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">Pesticides</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="Pesticide.aspx" class="btn btn-primary">Plus De Détail</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="imgs/entretienagricole.png" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">Entretien génerale</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="Entretien.aspx" class="btn btn-primary">Plus De Détail</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
  
        
</asp:Content>
