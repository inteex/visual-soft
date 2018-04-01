package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PackDaoImpl;
import model.Pack;

/**
 * Servlet implementation class PackSingleController
 */
@WebServlet("/PackSingleController")
public class PackSingleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PackSingleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int limit = 8;
		
		PackDaoImpl packDao = new PackDaoImpl();
		PackDaoImpl refPackDao = new PackDaoImpl();
		//List<Pack> listP = new ArrayList<Pack>();  ***********
		
		List<Pack> refPack = new ArrayList<Pack>();
		int id =Integer.parseInt(request.getParameter("id"));
		Pack pack = packDao.findById(id);
		int idRef = pack.getId_produit_pack();
		System.out.println(idRef);
		refPack = refPackDao.refPack(idRef);
		
		//listP = produitcat.findByCategorie(idSC,limit);    ***********
		
		request.setAttribute("refPack", refPack);
		request.setAttribute("pack", pack);
		
		this.getServletContext().getRequestDispatcher("/pack-single.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
