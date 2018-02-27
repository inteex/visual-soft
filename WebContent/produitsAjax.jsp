<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <ul class="products">
                  
                     <c:forEach var="produit" items="${produits }" varStatus="status" begin="${page-1}" end="${page-1}" >
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
                        
                        <c:if test="${page >= 3 }">
                        <li><a class="next page-numbers" onclick="lol(${page-1});">←</a></li>
                        </c:if>
                        	<c:forEach begin="${page <= 2 ?( page==2 ? page-1:page): page-2}" end="${page <=2 ? ( page==2 ? page+3:page+4): page+2}" varStatus="courant">
                        	
                             <li><a class="page-numbers ${page == courant.index ? 'current' : ''}" onclick="lol(${courant.index});">
                             			<c:out value="${courant.index}"></c:out>
                             	</a></li>
                             
                            </c:forEach>
                            <c:if test="${(page+2) < 9}">
                            <li><a class="next page-numbers" onclick="lol(${page+1});">→</a></li>
                             </c:if>
                        </ul>
                    </nav>
                    
                    