<jsp:include page="header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<body class="page no-sidebar header-style-1 menu-has-search menu-has-cart">

<!-- Featured Title -->
<div id="featured-title" class="clearfix featured-title-left">
    <div id="featured-title-inner" class="container clearfix">
        <div class="featured-title-inner-wrap">
            <div class="featured-title-heading-wrap">
                <h1 class="featured-title-heading">PRODUIT DETAIL</h1>
            </div>
            <div id="breadcrumbs">
                <div class="breadcrumbs-inner">
                    <div class="breadcrumb-trail">
                        <a href="#" title="Construction" rel="home" class="trail-begin">Home</a>
                        <span class="sep">/</span>
                        <span class="trail-end">Produit Détail</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Main Content -->
<div id="main-content" class="site-main clearfix">
    <div id="content-wrap">
        <div id="site-content" class="site-content clearfix">
            <div id="inner-content" class="inner-content-wrap">
                <div class="page-content">
                    <section class="wprt-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="wprt-spacer" data-desktop="80" data-mobi="60" data-smobi="60"></div>
                                </div><!-- /.col-md-12 -->

                                <div class="col-md-4">
                                    <div class="wprt-galleries-grid has-bullets bullet-style-2 bullet30" data-layout="grid" data-column="2" data-column2="2" data-column3="2" data-column4="1" data-gaph="10" data-gapv="10">
                                        <div id="images-wrap" class="cbp">
                                            <div class="cbp-item">
                                                <div class="item-wrap">
                                                    <a class="zoom" href="http://localhost:8080/images/${ produit.image }"><i class="fa fa-arrows-alt"></i></a>
                                                    <img src="http://localhost:8080/images/${ produit.image }" />
                                                </div>
                                            </div><!--/.cbp-item -->

                                        </div><!-- /#images-wrap -->
                                    </div><!--/.wprt-galleries-grid -->
                                </div><!-- /.col-md-8 -->

                                <div class="col-md-8">
                                    <h3 class="line-height-normal margin-bottom-10">PRODUIT DESCRIPTION</h3>
                                    <div class="wprt-lines style-1 custom-3">
                                        <div class="line-1"></div>
                                        <div class="line-2"></div>
                                    </div>

                                    <div class="wprt-spacer" data-desktop="25" data-mobi="25" data-smobi="25"></div>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec erat erat. Integer blandit nulla quis fermentum hendrerit. Vestibulum eu libero volutpat, portas quam acc, tempus sem. Donec sodales quam id lorem lobortis, vitae. 
                                    Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque nec erat erat. Integer blandit nulla quis fermentum hendrerit.
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec erat erat. Integer blandit nulla quis fermentum hendrerit. Vestibulum eu libero volutpat, portas quam acc, tempus sem. Donec sodales quam id lorem lobortis, vitae. 
                                    Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque nec erat erat. Integer blandit nulla quis fermentum hendrerit.</p>
                                    <p>${ produit.description}</p>
                                    
                                    <div class="wprt-lines style-1 custom-4">
                                        <div class="line-1"></div>
                                    </div>

                                    <ul class="wprt-list style-2 accent-color margin-top-30 margin-bottom-25">
                                        <li><strong>Nom:</strong> ${ produit.nom }</li>
                                        <li><strong>Reference:</strong> RN-302S</li>
                                        <li><strong>Prix:</strong> ${ produit.prix }</li>
                                        <li><strong>Disponible:</strong> Oui </li>
                                    </ul>

                                    <a href="#" class="wprt-button small rounded-3px">Télécharger la fiche téchnique</a>
                                </div><!-- /.col-md-4 -->

                                <div class="col-md-12">
                                    <div class="wprt-spacer" data-desktop="80" data-mobi="60" data-smobi="60"></div>
                                </div><!-- /.col-md-12 -->
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>

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

