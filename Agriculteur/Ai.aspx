<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ai.aspx.cs" Inherits="Agriculteur.Ai1" %>
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
                         <h2>Détection Maies Maladie</h2>
                                
                                 </center>
                             </div>
                         </div> 
    
  <div class="row">
                             <div class="col">
<div>
    <form id="upload-file" method="post" enctype="multipart/form-data">
        <label for="imageUpload" class="upload-label">
            Choose...
        </label>
        <input type="file" name="file" id="imageUpload" accept=".png, .jpg, .jpeg">
    </form>

    <div class="image-section" style="display:none;">
        <div class="img-preview">
            <div id="imagePreview">
            </div>
        </div>
       </div>
<div class="column">
        <div>
            <button type="button"  class="btn btn-primary" id="btn-predict">Predict!</button>
        </div>
    </div>
    </div>

    <div class="loader" style="display:none;"></div>

    <h3 id="result">
        <span> </span>
    </h3>

</div>
                                 </div>
      </div>
                        </div>

                </div></div></div>

</asp:Content>
