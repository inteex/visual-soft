package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategorieDaoImpl;
import dao.ProduitDaoImp;
import dao.SousCategorieDaoImpl;
import model.Categorie;
import model.Produit;
import model.SousCategorie;


@WebServlet("/AjouterPackController")
public class AjouterPackController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AjouterPackController() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final String CHEMIN_IMAGES = "C://Users/Salim TABET/Documents/VisualSoft/uploadImages/";
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Produit produit = null;
		CategorieDaoImpl catDao= new CategorieDaoImpl();
		SousCategorieDaoImpl sousCatDao = new SousCategorieDaoImpl();
		ProduitDaoImp produitDao = new ProduitDaoImp();
		List<Categorie> categories= new ArrayList<Categorie>();
		List<Produit> produits= new ArrayList<Produit>();
		List<Produit> produits1= new ArrayList<Produit>();
		List<SousCategorie> SousCategories= new ArrayList<SousCategorie>();
		
		categories = catDao.findAll();
		produits = produitDao.findAll();
		SousCategories = sousCatDao.findAll();
		
		for(Categorie Cat : categories)
		{
			for(SousCategorie sousCat : SousCategories)
			{
				if(sousCat.getId_categories() == Cat.getId())
				{
					for(Produit prod : produits)
					{
						if(prod.getId_sousCategorie() == sousCat.getId())
						{
							produit = new Produit(prod.getId(), prod.getNom(), prod.getImage(), sousCat.getNom(), Cat.getNom());
							produits1.add(produit);
						}
					}
				}
			}
		}
		
		request.setAttribute("produits", produits1);

		this.getServletContext().getRequestDispatcher("/ajouterPack.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
