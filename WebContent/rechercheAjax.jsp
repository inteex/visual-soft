<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                        
                        <c:if test="${page >= 3 }">
                        <li><a class="next page-numbers" onclick="produitsR(${page-1});">←</a></li>
                        </c:if>
                        	<c:forEach begin="${debut}" end="${fin}" varStatus="courant">
                        	
                             <li><a class="page-numbers ${page == courant.index ? 'current' : ''}" onclick="produitsR(${courant.index});">
                             			<c:out value="${courant.index}"></c:out>
                             	</a></li>
                             
                            </c:forEach>
                            <c:if test="${ page+1 < nbrpage}">
                            <li><a class="next page-numbers" onclick="produitsR(${page+1});">→</a></li>
                             </c:if>
                            <input type ="hidden" value="${s }" name="s" id="s"/>
                            
                        </ul>
                    </nav>
                    
                    
