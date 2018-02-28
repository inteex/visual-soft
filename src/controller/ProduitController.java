package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProduitDaoImp;

/**
 * Servlet implementation class ProduitController
 */
@WebServlet("/ProduitController")
public class ProduitController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProduitController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int numpage=1;
		ProduitDaoImp produits = new ProduitDaoImp();
		ProduitDaoImp p = new ProduitDaoImp();
		int nbrElement = p.nbrElement();
		int fin=3;
		int nbrpage ;
		nbrpage=(int) Math.ceil( nbrElement / 6.0);
		
		if( numpage+4 > nbrpage )fin= nbrpage;
		else fin= numpage+4;
		
		
		request.setAttribute("page", numpage);
		request.setAttribute("fin", fin);
		request.setAttribute("nbrpage", nbrpage);
		request.setAttribute("nbrElement", nbrElement);
		request.setAttribute("produits", produits.findBylimit( (numpage-1)*6) );
		
		this.getServletContext().getRequestDispatcher("/produits.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int numpage=Integer.parseInt(request.getParameter("val"));
		ProduitDaoImp produits = new ProduitDaoImp();
		ProduitDaoImp p = new ProduitDaoImp();
		int nbrElement = p.nbrElement();
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
		request.setAttribute("produits", produits.findBylimit( (numpage-1)*6) );
		
		this.getServletContext().getRequestDispatcher("/produitsAjax.jsp").forward(request, response);
	}

}
