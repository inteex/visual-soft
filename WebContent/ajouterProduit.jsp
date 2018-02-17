<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<body class="page no-sidebar header-style-1 menu-has-search menu-has-cart">

<div id="featured-title" class="clearfix featured-title-left">
    <div id="featured-title-inner" class="container clearfix">
        <div class="featured-title-inner-wrap">
            <div class="featured-title-heading-wrap">
                <h1 class="featured-title-heading">Ajouter Produit</h1>
            </div>
            <div id="breadcrumbs">
                <div class="breadcrumbs-inner">
                    <div class="breadcrumb-trail">
                        <a href="#" title="Construction" rel="home" class="trail-begin">Home</a>
                        <span class="sep">/</span>
                        <span class="trail-end">Ajouter Produit</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br>

<div class="wrapper">
    <div class="main">
        <div class="section">
            <div class="container">   
                <form action="AjouterProduit" method="post" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-5 col-sm-5">
                            <h6>Image du produit *</h6>
                            <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                              <div class="fileinput-new thumbnail img-no-padding" style="max-width: 370px; max-height: 250px;">
                                <img src="assets/img/image_produit.jpg" alt="...">
                              </div>
                              <div class="fileinput-preview fileinput-exists thumbnail img-no-padding" style="max-width: 370px; max-height: 250px;"></div>
                              <div>
                              <br>
                                <span class="wprt-button outline dark small btn-file"><span class="fileinput-new">sélectionner une image</span><span class="fileinput-exists">Changer</span>
                                <input type="file" name="image" required></span>
                                <a href="#" class="wprt-button small fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i> Supprimer</a>
                              </div>
                            </div>
                            <br> <br>

                            <h6>Catégorie *</h6>
								<div>
		                        	<select required name="categorie">
		                        		<option value="volvo">...</option>
		                        		<option value="volvo">Volvo</option>
  										<option value="saab">Saab</option>
  										<option value="mercedes">Mercedes</option>
  										<option value="audi">Audi</option>
		                        	</select>   
		                    	</div>
		                    	<div class="row price-row">
                                <div class="col-md-6">
                                    <h6>Prix *</h6>
                                    <div>
                                        <input type="number" value="" placeholder="Entrer le prix" name="prix" required>              
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <h6>Quantité *</h6>
                                    <div>
                                        <input type="number" value="" placeholder="Entrer la quantité ici..." name="quantite"required>
                                    </div>
                                </div>
                            </div>
                            <br><br><br>
                            <div class="col-md-4">
                           		 <button class="wprt-button dark" name="...">Annuler </button>
                           	</div>
                           	<div class="col-md-8">
                                 
                                 
                                 <button class="wprt-button outline" name="...">Enregister </button>
                            </div>
                            
		                    	
		                    	
                          

                        </div>

                        <div class="col-md-7 col-sm-7">
                            <div class="form-group">
                                <h6>Nom du produit *</h6>
                                <input type="text" placeholder="Entrer le nom du produit ici..." name="nomProduit" required>
                            </div>
                            <div class="form-group">
                                <h6>Référence *</h6>
                                <input type="text" placeholder="Entrer la référence du produit ici..." name="referenceProduit" required>
                            </div>
                            
                            <div class="form-group">
                                <h6>Description *</h6>
								<textarea placeholder="Entrer une bref description sur le produit ici..." rows="13" name="descriptionProduit" required ></textarea>
                            </div>	
                            
                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
							  <div class="form-control" data-trigger="fileinput"><i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div>
							  <span class="input-group-addon btn btn-info btn-file">
							  <span class="fileinput-new">Select file</span><span class="fileinput-exists">Changer</span>
							  <input type="file" name="fichier"></span>
							  <a href="#" class="input-group-addon btn btn-danger fileinput-exists" data-dismiss="fileinput">Supprimer</a>
							</div>
                        </div>
                    </div>


                   
                </form>
                <br>
            </div>
        </div>
    </div>
</div>
<br>



</body>








<jsp:include page="footer.jsp"/>