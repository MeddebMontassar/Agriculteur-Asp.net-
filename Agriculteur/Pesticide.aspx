<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Pesticide.aspx.cs" Inherits="Agriculteur.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
   
     <div class="container-fluid">
        
        <h2 class="mt-4">Liste des Pesticides</h2>
         <br />
         <a href="WebForm1.aspx" class="btn btn-warning">Consulter En Détail</a>
         <a href="Commande.aspx" class="btn btn-danger"style="float:right;">Passer Une Commande</a>
   
         
        <div class="card" style="overflow: scroll" >
  <div class="card-body">
      <asp:GridView ID="GridView1" Class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Pesticide_ID" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="Pesticide_ID" HeaderText="ID" ReadOnly="True" SortExpression="Pesticide_ID" />
            
              <asp:TemplateField>
                  <ItemTemplate>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-10">
                                <div class="row" >
                                    <div class="col-12">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Nom_Pesticide") %>' Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12" style="color: #FF0000; font-style: italic; font-weight: bold">

                                        &nbsp;<span class="auto-style1">Composition</span>
                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text='<%# Eval("Composition") %>'></asp:Label>
                                        &nbsp; | <span class="auto-style2"><em>Mode_Action</em></span><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text='<%# Eval("Mode_Action") %>'></asp:Label>
                                        &nbsp; | <span class="auto-style1">Dose_Emploi</span><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black" Text='<%# Eval("Dose_Emploi") %>'></asp:Label>

                                    </div>
                                </div>
                               
                                
                                </div>                                
                            </div>
                              <div class=" col-lg-2">
                                  <asp:Image class="img-fluid p-2" ID="Image" runat="server" ImageUrl='<%# Eval("Image") %>'  />
                            </div>
                        </div>
                    </div>
                  </ItemTemplate>
              </asp:TemplateField>
            
          </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AgriculteurDBConnectionString %>" SelectCommand="SELECT * FROM [Pesticide]">
      </asp:SqlDataSource>
  </div>
</div>
      
         </div>
         </div>
  </div>
    <!-- /#page-content-wrapper -->
  
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
      $("#menu-toggle").click(function (e) {
          e.preventDefault();
          $("#wrapper").toggleClass("toggled");
      });
  </script>

</body>

</html>


   
   


</asp:Content>
