<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PesticideTest.aspx.cs" Inherits="Agriculteur.PesticideTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });

         function readURL(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();

                 reader.onload = function (e) {
                     $('#imgview').attr('src', e.target.result);
                 };

                 reader.readAsDataURL(input.files[0]);
             }
         }

     </script>
     <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-5">
 
               <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                        <center>
                           <h4>Gestion des pesticides</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/ajoutlogo.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                         
                          
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
                                <label>ID Event</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="-->" OnClick="Button2_Click"  />
                                    </div>
                                </div>
                            </div>
                         </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nom Pesticide </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Article"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Composition</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Composition" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Mode d'action</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Mode d'action" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Dose d'emploi</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Dose d'emploi"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col-md-6">
                        <label>Utilisation</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Utilisation" ></asp:TextBox>
                        </div>
                     </div>
                    
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                 
                  
                 <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Ajouter" OnClick="Button1_Click1" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Modifier" OnClick="Button3_Click1"  />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Supprimer" OnClick="Button4_Click1" />
                            </div>
                        </div>
               </div>
            </div>
 
                <a href="home.aspx"><< Retour a la page d'acceuil</a><br>
                <br>
            </div>
 
             <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                          <img  width="100px" src="imgs/dd.jpg" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Nos Pesticides :</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Liste des pesticides"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col"  style="overflow: scroll">
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AgriculteurDBConnectionString %>" SelectCommand="SELECT * FROM [Pesticide]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" DataKeyNames="Pesticide_ID">
                            <Columns>
                                 <asp:BoundField DataField="Pesticide_ID" HeaderText="Pesticide_ID" ReadOnly="True" SortExpression="Pesticide_ID" />
                                        <asp:BoundField DataField="Composition" HeaderText="Composition" SortExpression="Composition" />
                                        <asp:BoundField DataField="Mode_Action" HeaderText="Mode_Action" SortExpression="Mode_Action" />
                                 <asp:BoundField DataField="Utilisation" HeaderText="Utilisation" SortExpression="Utilisation" />
                                 <asp:BoundField DataField="Dose_Emploi" HeaderText="Dose_Emploi" SortExpression="Dose_Emploi" />
                                <asp:BoundField DataField="Nom_Pesticide" HeaderText="Nom_Pesticide" SortExpression="Nom_Pesticide" />

                                    <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                                 <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />

                                    </Columns>
                        </asp:GridView>
                         <br />
                       
                     </div>
                      
                  </div>
                   <br />
                   
            
                  </div>
            </div>
         </div>
 
        </div>
    </div>
</asp:Content>
