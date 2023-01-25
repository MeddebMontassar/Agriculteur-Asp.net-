<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Commande.aspx.cs" Inherits="Agriculteur.Commande" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                           <h4>Espace pesticide</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/commande.jpg" />
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
                        <label>Nom Pesticide</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Nom Pesticide"></asp:TextBox>
                        </div>
                     </div>
                          <div class="col-md-6">
                        <label>Start Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     
                   
                  </div>
               
                  <div class="row">
                      <div class="col-md-12 text-center">
                        <center>

                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Envoyer" OnClick="Button2_Click" />
                            </center>
                     </div>
                    
                  </div>
               </div>
            </div>
            <a href="home.aspx"><< Retourner a l'acceuil</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Liste des commandes</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AgriculteurDBConnectionString %>" SelectCommand="SELECT [Pesticide_Nom], [issue_date] FROM [Issue_tbl]"></asp:SqlDataSource>
                     <div class="col">
                         <center>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Pesticide_Nom" HeaderText="Pesticide_Nom" SortExpression="Pesticide_Nom" />
                                <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date" />
                            </Columns>
                             </asp:GridView>
                              </center>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
