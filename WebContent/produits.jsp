<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="header.jsp"/>
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
                    <p class="woocommerce-result-count">Showing 1–6 of 7 results</p>
                    <form class="woocommerce-ordering" method="get">
                        <select name="orderby" class="orderby">
                            <option value="menu_order" selected="selected">Default sorting</option>
                            <option value="popularity">Sort by popularity</option>
                            <option value="rating">Sort by average rating</option>
                            <option value="date">Sort by newness</option>
                            <option value="price">Sort by price: low to high</option>
                            <option value="price-desc">Sort by price: high to low</option>
                        </select>
                    </form>

                    <ul class="products">
                  
                     <c:forEach items="${produits }" var="produit">
                      <li>
                            <a href="#">
                                <div class="product-thumbnail">
                                    <img src="assets/img/2.jpg" alt="img" />
                                </div>
                            </a>

                            <div class="product-info">
                                <a href="#" class="woocommerce-LoopProduct-link">
                                    <h3>${produit.nom }</h3>
                                    <span class="price">
                                        <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>${produit.prix }</span>
                                    </span>
                                </a>

                                <a href="ProduitSingleController?id=${produit.id}" class="add_to_cart_button">Details</a>
                            </div>
                        </li>
                    </c:forEach>
                      
                        <li>
                            <a href="#">
                                <div class="product-thumbnail">
                                    <img src="assets/img/2.png" alt="img" />
                                </div>
                            </a>

                            <div class="product-info">
                                <a href="#" class="woocommerce-LoopProduct-link">
                                    <h3>Shop Item 03</h3>
                                    <span class="price">
                                        <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>30.00</span>
                                    </span>
                                </a>

                                <a href="#" class="add_to_cart_button">Add to cart</a>
                            </div>
                        </li>

                        <li>
                            <a href="#">
                                <div class="product-thumbnail">
                                    <img src="assets/img/2.png" alt="img" />
                                </div>
                            </a>

                            <div class="product-info">
                                <a href="#" class="woocommerce-LoopProduct-link">
                                    <h3>Shop Item 04</h3>
                                    <span class="price">
                                        <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>40.00</span>
                                    </span>
                                </a>

                                <a href="#" class="add_to_cart_button">Add to cart</a>
                            </div>
                        </li>

                       
                    </ul>

                    <nav class="woocommerce-pagination">
                        <ul class="page-numbers">
                            <li><span class="page-numbers current">1</span></li>
                            <li><a class="page-numbers" href="#">2</a></li>
                            <li><a class="next page-numbers" href="#">→</a></li>
                        </ul>
                    </nav>
                </div><!-- /.content-woocommerce -->
            </div><!-- /.inner-content-wrap -->
        </div><!-- /#site-content -->

        <div id="sidebar" class="style-1">
            <div id="inner-sidebar" class="inner-content-wrap">
                <section class="widget woocommerce widget_price_filter">
                    <div class="wprt-toggle style-1">
                       <div class="wprt-toggle style-1 active">
                         <h4 class="toggle-title">PRODUITS</h4>
                             <div class="toggle-content">
                                 <ul class="sub-menu">
                                <li class="menu-item"><a href="ProduitController">WI-FI</a></li>
                                <li class="menu-item"><a href="#">CAMERAS</a></li>
                                <li class="menu-item"><a href="#">CABLES</a></li>
                                <li class="menu-item"><a href="#">Services</a></li>
                                
                           		 </ul>
                              </div>
                       </div>
                     </div>
                       <div class="wprt-toggle style-1">
                         <h4 class="toggle-title">CATEGORIE 02</h4>
                             <div class="toggle-content">
                                 <ul class="sub-menu">
                                <li class="menu-item"><a href="ProduitController">WI-FI</a></li>
                                <li class="menu-item"><a href="#">CAMERAS</a></li>
                                <li class="menu-item"><a href="#">CABLES</a></li>
                                <li class="menu-item"><a href="#">Services</a></li>
                                
                           		 </ul>
                              </div>
                       </div>
                     </div>
                </section>

               
            </div><!-- /#inner-sidebar -->
        
    </div><!-- /#content-wrap -->
</div><!-- /#main-content -->

<jsp:include page="footer.jsp"/>

