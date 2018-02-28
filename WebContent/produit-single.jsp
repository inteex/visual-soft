<jsp:include page="header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<body class="woocommerce-page shop-col-3 header-style-1 menu-has-search menu-has-cart">

<!-- Featured Title -->
<div id="featured-title" class="clearfix featured-title-left">
    <div id="featured-title-inner" class="container clearfix">
        <div class="featured-title-inner-wrap">
            <div class="featured-title-heading-wrap">
                <h1 class="featured-title-heading">Shop</h1>
            </div>
            <div id="breadcrumbs">
                <div class="breadcrumbs-inner">
                    <div class="breadcrumb-trail">
                        <a href="#" title="Construction" rel="home" class="trail-begin">Home</a>
                        <span class="sep">/</span>
                        <span class="trail-end">Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Main Content -->
<div id="main-content" class="site-main clearfix">
    <div id="content-wrap" class="container">
        <div id="site-content" class="site-content clearfix">
            <div id="inner-content" class="inner-content-wrap">
                <div class="content-woocommerce">
                    <div class="woo-single-post-class">
                    <div class="col-md-6">
                        <div class="wprt-galleries-grid" data-layout="grid" data-column="1" data-column2="1" data-column3="1" data-column4="1" data-gaph="10" data-gapv="10">
                                        <div id="images-wrap" class="cbp">
                                            <div class="cbp-item">
                                                <div class="item-wrap">
                                                    <a class="zoom" href="http://localhost:8080/images/${ produit.image }"><i class="fa fa-arrows-alt"></i></a>
                                                    <img src="http://localhost:8080/images/${ produit.image }" alt="image" />
                                                </div>
                                            </div><!--/.cbp-item -->
                                        </div><!-- /#images-wrap -->
                                    </div><!--/.wprt-galleries-grid -->
					</div>
                        <div class="summary entry-summary">
                            <h1 class="entry-title">${produit.nom}</h1>
                            <div>
                                <p class="price">
                                    <del><span>
                                        <span>$</span>230.00</span>
                                    </del>
                                    <ins><span><span>$</span>200.00</span>
                                    </ins>
                                </p>
                            </div>

                            <p>${ produit.description}.</p>
                        
                            
							<c:if test="${ !empty(produit.ficheT) }">
								<input type="button" value="Fiche technique"/>
							</c:if>    
                            
                            
                            <div class="product_meta">
                                <span class="posted_in">Category: <a href="#" rel="tag">Construction</a></span>
                                <span class="tagged_as">Tags: <a href="#" rel="tag">Tools</a></span>
                            </div>
                        </div><!-- /.summary -->
                                    
                        <div class="woocommerce-tabs">
                            <ul class="tabs wc-tabs">
                                <li class="description_tab active">
                                    <a href="#tab-description">Description</a>
                                </li>
                            </ul>
                            
                            <div class="panel entry-content wc-tab">
                                <div id="tab-description">
                                    <h2>Product Description</h2>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a metus pellentesque, scelerisque ex sed, volutpat nisi. Cras sit amet felis nulla. Cras mi ex, mattis vel molestie sed.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a metus pellentesque, scelerisque ex sed, volutpat nisi. Cras sit amet felis nulla. Cras mi ex, mattis vel molestie sed.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a metus pellentesque, scelerisque ex sed, volutpat nisi. Cras sit amet felis nulla. Cras mi ex, mattis vel molestie sed.</p>
                                </div>
                            </div>
                        </div><!-- /.woocommerce-tabs -->

                                            
                        
                    </div><!-- /.woo-single-post-class -->
                </div><!-- /.content-woocommerce -->
            </div><!-- /.inner-content-wrap -->
        </div><!-- /#site-content -->

        <div id="sidebar" class="style-1">
            <div id="inner-sidebar" class="inner-content-wrap">
                <section class="widget woocommerce widget_shopping_cart">
                  <c:set var="first" scope="page" value="0"></c:set>
                	<c:forEach var="categorie" items="${ categorie }">
                	  <c:choose>
	                    <c:when test="${ first == 0 }"><div class="wprt-toggle style-1 active"> <c:set var="first" scope="page" value="1"></c:set> </c:when>
	                    <c:when test="${ first != 0 }"><div class="wprt-toggle style-1"> </c:when>
	                  </c:choose>
	                         <h4 class="toggle-title">${ categorie.nom }</h4>
	                             <div class="toggle-content">
		                                 <ul class="sub-menu">
		                            <c:forEach var="sousCategorie" items="${ sousCategorie }">
		                            	<c:if test="${ categorie.id == sousCategorie.id_categories }">     
		                                	<li class="menu-item"><a href="ProduitController">${ sousCategorie.nom }</a></li>
		                                </c:if>
		                            </c:forEach>
		                           		 </ul>
	                              </div>
	                     </div>
	                 </c:forEach>    
	                 
                     </div>
                </section>
            </div><!-- /#inner-sidebar -->
        </div>
    </div><!-- /#content-wrap -->
</div><!-- /#main-content -->


<section class="wprt-section offer">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="wprt-spacer" data-desktop="70" data-mobi="60" data-smobi="60"></div>
                                    <h2>Produit dans la meme categorie</h2>
                                    <div class="wprt-lines style-1 custom-5">
                                        <div class="line-1"></div>
                                        <div class="line-2"></div>
                                    </div>
                                    <div class="wprt-spacer" data-desktop="50" data-mobi="40" data-smobi="40"></div>
                                </div><!-- /.col-md-12 -->

                                <div class="col-md-12">
                                    <div class="wprt-service arrow-style-2 has-arrows arrow60 arrow-light" data-layout="slider" data-column="4" data-column2="3" data-column3="2" data-column4="1" data-gaph="30" data-gapv="30">
                                        <div id="service-wrap" class="cbp">
                                        <c:forEach var="prod" items="${ listProduit }">
                                            <div class="cbp-item">
                                                <div class="service-item clearfix">
                                                    <div class="thumb"><img src="http://localhost:8080/images/${ prod.image }" alt="image" /></div>
                                                    <div class="service-item-wrap">
                                                        <h3 class="title font-size-18"><a href="#">${ prod.nom }</a></h3>
                                                        <p class="desc">Nulla iaculis turpis in nibh aliquam maximus. In dignissim arcu vel diam scelerisque, pretium urna </p>
                                                        <a href="#" class="wprt-button small rounded-3px">READ MORE</a>
                                                    </div>
                                                </div>
                                            </div><!-- /.cbp-item -->
										</c:forEach>
                             
                                        </div><!-- /#service-wrap -->
                                    </div><!-- /.wprt-service -->
                                </div><!-- /.col-md-12 -->

                                <div class="col-md-12">
                                    <div class="wprt-spacer" data-desktop="80" data-mobi="60" data-smobi="60"></div>
                                </div><!-- /.col-md-12 -->
                            </div><!-- /.row -->
                        </div><!-- /.container -->
                    </section>


<jsp:include page="footer.jsp"></jsp:include>

