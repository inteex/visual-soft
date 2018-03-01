<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="header.jsp"/>
<script type="text/javascript">
  function produits(value)
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
                        	<c:forEach begin="${page}" end="${fin}" varStatus="courant">
                        	
                             <li><a class="page-numbers" href="#" onclick="produits(${courant.index});">
                             			<c:out value="${courant.index}"></c:out>
                             	</a></li>
                             
                            </c:forEach>
                           <c:if test="${ page+1 < nbrpage }">
                            <li><a class="next page-numbers" href="#" >→</a></li>
                           </c:if>
                        </ul>
                    </nav>
                    </div>
                </div><!-- /.content-woocommerce -->
            </div><!-- /.inner-content-wrap -->
        </div><!-- /#site-content -->

        <div id="sidebar" class="style-1">
            <div id="inner-sidebar" class="inner-content-wrap">
                <section class="widget woocommerce widget_price_filter">
                     <c:forEach var="categorie" items="${ categorie }" varStatus="count">
                       <div class="wprt-toggle style-1">
                        <div class="wprt-toggle style-1 ${count.index ==0 ? 'active' : ''}">
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
                       </div>
                       </c:forEach>
                        </section>
                     </div>
               

               
            </div><!-- /#inner-sidebar -->
        
    </div><!-- /#content-wrap -->
</div><!-- /#main-content -->

<jsp:include page="footer.jsp"/>

