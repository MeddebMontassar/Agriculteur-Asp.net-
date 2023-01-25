<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Agriculteur.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <html>
        <body>
             <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="imgs/orange.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Agriculteur Tunisien</h5>
                    <p>Bienvenue Chez Nous</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="imgs/raisin.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Agriculteur Tunisien</h5>
                    <p>Bienvenue Chez Nous</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="imgs/fraise.jpg" class="d-block w-100" alt="...">
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
    </div><br /><br />
            
   <table border="2px"  style="width:100%">
  <table style="width:100%;" border="1"><thead><tr class="row100 head"><th class="column100 column1"></th><th class="column100 column2">Ravageurs et maladies</th><th class="column100 column3">Produits</th><th class="column100 column3">Dose d'emploi</th></tr></thead><tbody><tr class="row100"><td class="column100 column1" rowspan="18">Insecticides /Acaricides</td>
<td class="column100 column2">Insectes du sol</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/5-force-5-g.html">Force</a></td>
<td class="column100 column4">15 kg/ha</td>
</tr><tr class="row100"><td class="column100 column2" rowspan="3">Pucerons</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/4-engeo-247-sc.html">Engeo</a></td>
<td class="column100 column4">20 cc/hl</td>
</tr><tr><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/8-karate-zeon.html">Karaté Zéon</a></td>
<td class="column100 column4">25 cc/hl</td>
</tr><tr><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/3-duloc-20-sl.html">Duloc</a></td>
<td class="column100 column4">35 cc/hl</td>
</tr><tr class="row100"><td class="column100 column2" rowspan="2">Cératite</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/8-karate-zeon.html">Karaté Zéon</a></td>
<td class="column100 column4">25 cc/hl</td>
</tr><tr><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/7-imidan-50-wp.html">Imidan</a></td>
<td class="column100 column4">100 g/hl</td>
</tr><tr class="row100"><td class="column100 column2">Cochenille</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/7-imidan-50-wp.html">Imidan</a></td>
<td class="column100 column4">150 g/hl</td>
</tr><tr class="row100"><td class="column100 column2" rowspan="4">Acariens</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/11-milbeknock-1-ec.html">Milbeknock</a></td>
<td class="column100 column4">100 cc/hl</td>
</tr><tr><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/9-masai.html">Masaî</a></td>
<td class="column100 column4">50 g/hl</td>
</tr><tr class="row100"><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/6-jalisco.html">Jalisco</a></td>
<td class="column100 column4">50 g/hl</td>
</tr><tr class="row100"><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/12-numectin-18-ec.html">Numectin</a></td>
<td class="column100 column4">50 cc/hl</td>
</tr><tr class="row100"><td class="column100 column2" rowspan="7">Mineuse des agrumes</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/12-numectin-18-ec.html">Numectin</a></td>
<td class="column100 column4">50 cc/hl</td>
</tr><tr><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/11-milbeknock-1-ec.html">Milbeknock</a></td>
<td class="column100 column4">100 cc/hl</td>
</tr><tr><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/10-match-050-ec.html">Match</a></td>
<td class="column100 column4">100 cc/hl</td>
</tr><tr><td class="column100 column3"><a href="https://www.agriprotec.com/fr/insecticides/4-engeo-247-sc.html">Engeo</a></td>
<td class="column100 column4">25 cc/hl</td>
</tr><tr><td class="column100 column3" rowspan="3"><a href="https://www.agriprotec.com/fr/insecticides/3-duloc-20-sl.html">Duloc</a></td>
<td class="column100 column4">60 cc/hl</td>
</tr><tr><td class="column100 column3">40 cc + 400 cc huile d'été/hl (Pulvérisation Foliaire)</td>
</tr><tr><td class="column100 column4">1 à 2 ml/arbre &lt; 4 ans badigeonnage du tronc</td>
</tr><tr class="row100"><td class="column100 column1">Fongicides</td>
<td class="column100 column2">Gommose</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/fongicides/28-alial-80-wp.html">Alial</a></td>
<td class="column100 column4">250 g/hl</td>
</tr><tr class="row100"><td class="column100 column1" rowspan="3">Herbicides</td>
<td class="column100 column2">Mauvaises herbes annuelles dicotylédones</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/herbicides/19-heat.html">Heat</a></td>
<td class="column100 column4">70 g/ha</td>
</tr><tr><td class="column100 column3">Graminées vivaces</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/herbicides/18-fusilade-max.html">Fusilade Max</a></td>
<td class="column100 column4">3 L/ha</td>
</tr><tr><td class="column100 column3">Herbicide totale</td>
<td class="column100 column3"><a href="https://www.agriprotec.com/fr/herbicides/16-cible.html">Cible</a></td>
<td class="column100 column4">3 L/ha</td>
</tr></tbody></table>
</body>
        </html>
</asp:Content>

