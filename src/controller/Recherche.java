package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategorieDaoImpl;
import dao.ProduitDaoImp;
import dao.SousCategorieDaoImpl;

/**
 * Servlet implementation class Recherche
 */
@WebServlet("/Recherche")
public class Recherche extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String motCle=	request.getParameter("s");
		request.setAttribute("s", motCle);
		int numpage =1;
		ProduitDaoImp produits = new ProduitDaoImp();
		ProduitDaoImp p = new ProduitDaoImp();
		int nbrElement = p.nbrElementRech(motCle);
		int nbrpage ;
		nbrpage=(int) Math.ceil( nbrElement / 6.0);
		
		int debut=0,fin=0;
		
		// afficher pagination correctement pour page 1 et 2 
		if( numpage <= 2  ){
			
			if( numpage == 2 ) { 
				debut = numpage-1;
				if( numpage+3 > nbrpage )fin= nbrpage;
				else fin= numpage+3;
			}
			
			else {
				debut = numpage;
				if( numpage+4 > nbrpage )fin= nbrpage;
				else fin= numpage+4;
			}
			
			
		} else {
			debut = numpage-2 ; // pour page > 2
			if( numpage+2 > nbrpage )fin= nbrpage;
			else fin= numpage+2;
			
		}
		
		request.setAttribute("nbrElement", nbrElement);
		request.setAttribute("page", numpage);
		request.setAttribute("nbrpage", nbrpage);
		request.setAttribute("debut", debut);
		request.setAttribute("fin", fin);
		request.setAttribute("produits", produits.rechercher(motCle , (numpage-1)*6) );
		request.setAttribute("s", motCle );
		CategorieDaoImpl categorie = new CategorieDaoImpl();
		SousCategorieDaoImpl sousCategorie = new SousCategorieDaoImpl();
		request.setAttribute("categorie", categorie.findAll());
		request.setAttribute("sousCategorie", sousCategorie.findAll());
		
			this.getServletContext().getRequestDispatcher("/recherche.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String motCle=	request.getParameter("s");
	System.out.println(motCle);
	int	numpage=Integer.parseInt(request.getParameter("val"));
		
	
	ProduitDaoImp produits = new ProduitDaoImp();
	ProduitDaoImp p = new ProduitDaoImp();
	int nbrElement = p.nbrElementRech(motCle);
	System.out.println(nbrElement);
	int nbrpage ;
	nbrpage=(int) Math.ceil( nbrElement / 6.0);
	
	int debut=0,fin=0;
	
	// afficher pagination correctement pour page 1 et 2 
	if( numpage <= 2  ){
		
		if( numpage == 2 ) { 
			debut = numpage-1;
			if( numpage+3 > nbrpage )fin= nbrpage;
			else fin= numpage+3;
		}
		
		else {
			debut = numpage;
			if( numpage+4 > nbrpage )fin= nbrpage;
			else fin= numpage+4;
		}
		
		
	} else {
		debut = numpage-2 ; // pour page > 2
		if( numpage+2 > nbrpage )fin= nbrpage;
		else fin= numpage+2;
		
	}
	
	request.setAttribute("nbrElement", nbrElement);
	request.setAttribute("page", numpage);
	request.setAttribute("nbrpage", nbrpage);
	request.setAttribute("debut", debut);
	request.setAttribute("fin", fin);
	request.setAttribute("produits", produits.rechercher(motCle , (numpage-1)*6) );
	request.setAttribute("s", motCle );

	CategorieDaoImpl categorie = new CategorieDaoImpl();
	SousCategorieDaoImpl sousCategorie = new SousCategorieDaoImpl();
	request.setAttribute("categorie", categorie.findAll());
	request.setAttribute("sousCategorie", sousCategorie.findAll());
	
		this.getServletContext().getRequestDispatcher("/rechercheAjax.jsp").forward(request, response);
	}

}
