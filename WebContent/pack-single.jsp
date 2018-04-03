<jsp:include page="header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<body class="page no-sidebar header-style-1 menu-has-search menu-has-cart">

<!-- Featured Title -->
<div id="featured-title" class="clearfix featured-title-left">
    <div id="featured-title-inner" class="container clearfix">
        <div class="featured-title-inner-wrap">
            <div class="featured-title-heading-wrap">
                <h1 class="featured-title-heading">PACK DETAIL</h1>
            </div>
            <div id="breadcrumbs">
                <div class="breadcrumbs-inner">
                    <div class="breadcrumb-trail">
                        <a href="#" title="Construction" rel="home" class="trail-begin">Home</a>
                        <span class="sep">/</span>
                        <span class="trail-end">Pack Détail</span>
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
                                                    <a class="zoom" href="http://localhost:8080/images/${ pack.image }"><i class="fa fa-arrows-alt"></i></a>
                                                    <img src="http://localhost:8080/images/${ pack.image }" />
                                                </div>
                                            </div><!--/.cbp-item -->

                                        </div><!-- /#images-wrap -->
                                    </div><!--/.wprt-galleries-grid -->
                                </div><!-- /.col-md-4 -->

                                <div class="col-md-8">
                                    <h3 class="line-height-normal margin-bottom-10">PRODUIT DESCRIPTION</h3>
                                    <div class="wprt-lines style-1 custom-3">
                                        <div class="line-1"></div>
                                        <div class="line-2"></div>
                                    </div>

                                    <div class="wprt-spacer" data-desktop="25" data-mobi="25" data-smobi="25"></div>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec erat erat. Integer blandit nulla quis fermentum hendrerit. Vestibulum eu libero volutpat, portas quam acc, tempus sem. Donec sodales quam id lorem lobortis, vitae. 
                                    Pellentesque habitant   <b> MANE7ITHACH BILAMA  </b>  fames ac turpis egestas. Quisque nec erat erat. Integer blandit nulla quis fermentum hendrerit.
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec erat erat. Integer blandit nulla quis fermentum hendrerit. Vestibulum eu libero volutpat, portas quam acc, tempus sem. Donec sodales quam id lorem lobortis, vitae. 
                                    Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque nec erat erat. Integer blandit nulla quis fermentum hendrerit.</p>
                                    <p>${ produit.description}</p>
                                    
                                    <div class="wprt-lines style-1 custom-4">
                                        <div class="line-1"></div>
                                    </div>

                                    <ul class="wprt-list style-2 accent-color margin-top-30 margin-bottom-25">
                                        <li><strong>Nom:</strong> ${ pack.titre }</li>
                                        <li><strong>Reference:</strong> RN-302S</li>
                                        <li><strong>Prix:</strong> 0000 DA</li>
                                        <li><strong>Disponible:</strong> Oui </li>
                                        <li><strong>fichier:</strong> fiche t </li>
                                    </ul>
							<!--  	  <c:if test="${ !empty(produit.ficheT) }">
                                    <a href="http://localhost:8080/FicheTechnique/${ produit.ficheT }" target="_blank" class="wprt-button small rounded-3px">Télécharger la fiche téchnique</a>
                                  </c:if>-->

                                <h3 class="line-height-normal margin-bottom-10">Références</h3>
                                <div class="wprt-lines style-1 custom-3">
                                        <div class="line-1"></div>
                                        <div class="line-2"></div>
                                </div>
                                    <br>
                                <c:forEach varStatus="v" var="ref" items="${ refPack }">
                                	<a style="font-size: 18px;" href="ProduitSingle?id=${ref.idProdRef}"><i> ${v.index != 0 ? ',' : ''}  ${ref.nomRef} </i></a>
                                </c:forEach>

                                <div class="col-md-12">
                                    <div class="wprt-spacer" data-desktop="80" data-mobi="60" data-smobi="60"></div>
                                </div><!-- /.col-md-12 -->
                            </div>
                        </div>
                      </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>
