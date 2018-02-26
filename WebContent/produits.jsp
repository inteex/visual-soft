<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="header.jsp"/>
<script type="text/javascript">
  function lol(value)
     {
         var val=value;
        
         $.ajax({
           type: "POST",
           url: "ProduitController",
           data:{ val: val } ,
           success: function(data) {	
        	   
       	 $('.ajax').html(data);
     }
     });
     }
  </script>
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
				<div class ="ajax">
                    <ul class="products">
                  
                     <c:forEach var="produit" items="${produits }" varStatus="status" begin="0" end="5" >
                     <c:choose>
                     <c:when test="${status.count==1 || status.count==4}"> <li class="first"></c:when>
                     <c:when test="${status.count==3 || status.count==6}"> <li class="last"></c:when>
                     <c:otherwise><li></c:otherwise>
                     </c:choose>
                     

                                <div class="product-thumbnail">
                                     <img src="http://localhost:8080/images/${ produit.image }">
                                </div>
                            

                            <div class="product-info">
                                <a href="#" class="woocommerce-LoopProduct-link">
                                    <h3>${ produit.nom }</h3>
                                    <span class="price">
                                        <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>${produit.prix }</span>
                                    </span>
                                </a>

                                <a href="ProduitSingle?id=${produit.id}" class="add_to_cart_button">Details</a>
                            </div>
                        </li>
                    </c:forEach>
                    </ul>

                    <nav class="woocommerce-pagination">
                        <ul class="page-numbers">
                        	<c:forEach begin="${page}" end="${page+4}" varStatus="courant">
                        	
                             <li><a class="page-numbers" href="#" onclick="lol(${courant.index});">
                             			<c:out value="${courant.index}"></c:out>
                             	</a></li>
                             
                            </c:forEach>
                           
                            <li><a class="next page-numbers" href="#">→</a></li>
                        </ul>
                    </nav>
                    </div>
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

