<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Irrigationhome1.aspx.cs" Inherits="Agriculteur.Irrigationhome1" %>
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
                  <h2 style="color:cornflowerblue;">VOUS AVEZ
BESOIN D'AIDE!</h2>
                  <p style="color:darkblue;"><b>L'agriculteur Tunisien vous offre la solution </b></p>
               </center>
            </div>
         </div>


        <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="imgs/irrigation.jfif" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">TECHNOLOGIES</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="Technologie.aspx" class="btn btn-primary">Consulter Catalogue</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="imgs/ss.jfif" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">PRODUIT POUR IRRIGATION</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="ProduitIrrigation.aspx" class="btn btn-primary">Consulter Catalogue</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="imgs/compteur eau.jfif" alt="thumb01" height="250" />
                    <div class="card-body">
                        <h5 class="card-title">CONSOMMATION</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="Consommation.aspx" class="btn btn-primary">Consulter Catalogue</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
