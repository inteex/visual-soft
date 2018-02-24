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
		request.setAttribute("page", numpage);
		request.setAttribute("produits", produits.findAll());
		this.getServletContext().getRequestDispatcher("/produits.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int numpage=Integer.parseInt(request.getParameter("val"));
		ProduitDaoImp produits = new ProduitDaoImp();
		
		request.setAttribute("page", numpage);
		request.setAttribute("size", numpage);
		request.setAttribute("produits", produits.findAll());
		this.getServletContext().getRequestDispatcher("/produitsAjax.jsp").forward(request, response);
	}

}
