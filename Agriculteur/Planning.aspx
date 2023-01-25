<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Planning.aspx.cs" Inherits="Agriculteur.Planning" %>
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
            <div class="card">
               <div class="card-body">
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
                        <label>Evénement </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Evenement"></asp:TextBox>
                        </div>
                     </div>
                    
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Date_Debut</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date_Debut" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date_Fin</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Date_Fin" TextMode="Date"></asp:TextBox>
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
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click"  />
                                
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Supprimer" OnClick="Button4_Click"  />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="home.aspx"><< Retourner a la page d'accueil</a><br><br>
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
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AgriculteurDBConnectionString %>" SelectCommand="SELECT * FROM [Planning]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" DataKeyNames="Evenement_ID">
                            <Columns>
                                 <asp:BoundField DataField="Evenement_ID" HeaderText="Evenement_ID" ReadOnly="True" SortExpression="Evenement_ID" />
                                        <asp:BoundField DataField="Evenement" HeaderText="Evenement" SortExpression="Evenement" />
                                        
                                 <asp:BoundField DataField="Date_Debut" HeaderText="Date_Debut" SortExpression="Date_Debut" />
                                 <asp:BoundField DataField="Date_Fin" HeaderText="Date_Fin" SortExpression="Date_Fin" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />

                                    </Columns>
                        </asp:GridView>
                         <br />
                         <asp:Button ID="Button3" runat="server" class="btn btn-secondary btn-lg" Text="Calendrier" OnClick="Button3_Click" />
                     </div>
                      
                  </div>
                   <br />
                   
            
                  </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
