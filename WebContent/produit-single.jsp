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
                        <div class="images">
                            <img src="assets/img/${produit.image }.jpg" alt="image" />
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

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a metus pellentesque, scelerisque ex sed, volutpat nisi. Cras sit amet felis nulla. Cras mi ex, mattis vel molestie sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a metus pellentesque, scelerisque ex sed, volutpat nisi. Cras sit amet felis nulla. Cras mi ex, mattis vel molestie sed.</p>
                        
                            <form class="cart" method="post">
                                <div class="quantity">
                                    <input type="number" value="1" title="Qty" class="input-text qty text" size="4">
                                </div>

                                <input type="hidden" name="add-to-cart" value="1166">

                                <button type="submit" class="single_add_to_cart_button button alt">Add to cart</button>
                            </form>
                            
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
                                <li class="reviews_tab">
                                    <a href="#tab-reviews">Reviews (0)</a>
                                </li>
                            </ul>
                            
                            <div class="panel entry-content wc-tab">
                                <div id="tab-description">
                                    <h2>Product Description</h2>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a metus pellentesque, scelerisque ex sed, volutpat nisi. Cras sit amet felis nulla. Cras mi ex, mattis vel molestie sed.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a metus pellentesque, scelerisque ex sed, volutpat nisi. Cras sit amet felis nulla. Cras mi ex, mattis vel molestie sed.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a metus pellentesque, scelerisque ex sed, volutpat nisi. Cras sit amet felis nulla. Cras mi ex, mattis vel molestie sed.</p>
                                </div>
                            </div>

                            <div class="panel entry-content wc-tab">
                                <div id="reviews">
                                    <div id="comments">
                                        <h2>Reviews</h2>
                                        <p>There are no reviews yet.</p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.woocommerce-tabs -->

                        <div class="related products">
                            <h2>RELATED PRODUCTS</h2>
                            <ul class="products">
                                <li>
                                    <a href="#">
                                        <div class="product-thumbnail">
                                            <span class="onsale">Sale!</span>
                                            <img src="assets/img/2.png" alt="image" />
                                        </div>
                                    </a>
                                    <div class="product-info">
                                        <a href="#"><h3>Shop Item 02</h3>
                                            <span class="price">
                                                <del><span><span>$</span>100.00</span></del>
                                                <ins><span><span>$</span>80.00</span></ins>
                                            </span>
                                        </a>
                                    <a href="#" class="button product_type_simple add_to_cart_button">Add to cart</a></div>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="product-thumbnail">
                                            <span class="onsale">Sale!</span>
                                            <img src="assets/img/2.png" alt="image" />
                                        </div>
                                    </a>
                                    <div class="product-info">
                                        <a href="#"><h3>Shop Item 02</h3>
                                            <span class="price">
                                                <del><span><span>$</span>100.00</span></del>
                                                <ins><span><span>$</span>80.00</span></ins>
                                            </span>
                                        </a>
                                    <a href="#" class="button product_type_simple add_to_cart_button">Add to cart</a></div>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="product-thumbnail">
                                            <span class="onsale">Sale!</span>
                                            <img src="assets/img/2.png" alt="image" />
                                        </div>
                                    </a>
                                    <div class="product-info">
                                        <a href="#"><h3>Shop Item 02</h3>
                                            <span class="price">
                                                <del><span><span>$</span>100.00</span></del>
                                                <ins><span><span>$</span>80.00</span></ins>
                                            </span>
                                        </a>
                                    <a href="#" class="button product_type_simple add_to_cart_button">Add to cart</a></div>
                                </li>
                            </ul>
                        </div><!--/.related products -->
                    </div><!-- /.woo-single-post-class -->
                </div><!-- /.content-woocommerce -->
            </div><!-- /.inner-content-wrap -->
        </div><!-- /#site-content -->

        <div id="sidebar" class="style-1">
            <div id="inner-sidebar" class="inner-content-wrap">
               

                <section class="widget woocommerce widget_shopping_cart">
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

                <section class="widget woocommerce widget_products">
                    <h2 class="widget-title"><span>PRODUCTS</span></h2>
                    <ul class="products">
                                <li>
                                    <a href="#">
                                        <div class="product-thumbnail" style="width:75%;">
                                            <span class="onsale">Sale!</span>
                                            <img src="assets/img/2.png" alt="image" />
                                        </div>
                                    </a>
                                    <div class="product-info">
                                        <a href="#"><h3>Shop Item 02</h3>
                                            <span class="price">
                                                <del><span><span>$</span>100.00</span></del>
                                                <ins><span><span>$</span>80.00</span></ins>
                                            </span>
                                        </a>
                                    <a href="#" class="button product_type_simple add_to_cart_button">Add to cart</a></div>
                                </li>
                    </ul>
                </section>
            </div><!-- /#inner-sidebar -->
        </div>
    </div><!-- /#content-wrap -->
</div><!-- /#main-content -->

<jsp:include page="footer.jsp"></jsp:include>

