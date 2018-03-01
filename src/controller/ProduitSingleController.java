package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategorieDaoImpl;
import dao.ProduitDaoImp;
import dao.SousCategorieDaoImpl;
import model.Produit;

/**
 * Servlet implementation class ProduitSingleController
 */
@WebServlet("/ProduitSingleController")
public class ProduitSingleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProduitSingleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int limit = 8;
		
		ProduitDaoImp produit = new ProduitDaoImp();
		ProduitDaoImp produitcat = new ProduitDaoImp();
		List<Produit> listP = new ArrayList<Produit>();
		
		int id =Integer.parseInt(request.getParameter("id"));
		Produit pp = produit.findById(id);
		int idSC =pp.getId_sousCategorie();

		listP = produitcat.findByCategorie(idSC,limit);
	
		request.setAttribute("listProduit", listP);
		request.setAttribute("produit", pp);
		
		this.getServletContext().getRequestDispatcher("/produit-single.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	

}
