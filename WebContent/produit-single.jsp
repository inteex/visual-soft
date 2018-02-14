<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
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
                            <img src="assets/img/shop-item.png" alt="image" />
                        </div>

                        <div class="summary entry-summary">
                            <h1 class="entry-title">${produit.nom }</h1>
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
                                            <img src="assets/img/shop-item.png" alt="image" />
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
                                            <img src="assets/img/shop-item.png" alt="image" />
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
                                            <img src="assets/img/shop-item.png" alt="image" />
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
                <section class="widget woocommerce widget_price_filter">
                    <h2 class="widget-title"><span>FILTER BY PRICE</span></h2>
                        <form method="get" action="#">
                    <div class="price_slider_wrapper">
                        <div class="price_slider ui-slider ui-slider-horizontal">
                            <div class="ui-slider-range"></div>

                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span></div>

                        <div class="price_slider_amount">
                            <button type="submit" class="button">Filter</button>
                            <div class="price_label">
                                Price: <span class="from">$20</span> — <span class="to">$200</span>
                            </div>
                        </div>
                    </div>
                </form>
                </section>

                <section class="widget woocommerce widget_shopping_cart">
                    <h2 class="widget-title"><span>CART</span></h2>

                    <div class="widget_shopping_cart_content">
                        <ul class="cart_list product_list_widget ">
                            <li class="mini_cart_item">
                                <a href="#" class="remove" title="Remove this item">×</a>
                                <a href="#"><img width="160" height="160" src="assets/img/shop-item.png" alt="image">Shop item 01</a>
                                <span class="quantity">1 × <span class="woocommerce-Price-amount amount">
                                <span class="woocommerce-Price-currencySymbol">$</span>200.00</span></span>
                            </li>

                            <li class="mini_cart_item">
                                <a href="#" class="remove" title="Remove this item">×</a>
                                <a href="#"><img width="160" height="160" src="assets/img/shop-item.png" alt="image">Shop item 02</a>
                                <span class="quantity">1 × <span class="woocommerce-Price-amount amount">
                                <span class="woocommerce-Price-currencySymbol">$</span>70.00</span></span>
                            </li>

                            <li class="mini_cart_item">
                                <a href="#" class="remove" title="Remove this item">×</a>
                                <a href="#"><img width="160" height="160" src="assets/img/shop-item.png" alt="image">Shop item 03</a>
                                <span class="quantity">1 × <span class="woocommerce-Price-amount amount">
                                <span class="woocommerce-Price-currencySymbol">$</span>30.00</span></span>
                            </li>
                        </ul><!-- end product list -->

                        <p class="total"><strong>Subtotal:</strong>
                            <span class="woocommerce-Price-amount amount">
                            <span class="woocommerce-Price-currencySymbol">$</span>300.00</span>
                        </p>
                        
                        <p class="buttons">
                            <a href="#" class="button wc-forward">View Cart</a>
                            <a href="#" class="button checkout wc-forward">Checkout</a>
                        </p>
                    </div><!-- /.widget_shopping_cart_content -->
                </section>

                <section class="widget woocommerce widget_products">
                    <h2 class="widget-title"><span>PRODUCTS</span></h2>
                    <ul class="product_list_widget">
                        <li>
                            <a href="#" title="">
                                <img width="160" height="160" src="assets/img/shop-item.png" alt="image">
                                <span class="product-title">Shop item 01</span>
                            </a>
                            <del>
                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>250.00</span>
                            </del>
                            <ins>
                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>200.00</span>
                            </ins>
                        </li>

                        <li>
                            <a href="#" title="">
                                <img width="160" height="160" src="assets/img/shop-item.png" alt="image">
                                <span class="product-title">Shop item 02</span>
                            </a>
                            <del>
                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>100.00</span>
                            </del>
                            <ins>
                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>70.00</span>
                            </ins>
                        </li>

                        <li>
                            <a href="#" title="">
                                <img width="160" height="160" src="assets/img/shop-item.png" alt="image">
                                <span class="product-title">Shop item 03</span>
                            </a>
                            <del>
                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>50.00</span>
                            </del>
                            <ins>
                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>30.00</span>
                            </ins>
                        </li>
                    </ul>
                </section>
            </div><!-- /#inner-sidebar -->
        </div>
    </div><!-- /#content-wrap -->
</div><!-- /#main-content -->
<jsp:include page="footer.jsp"/>