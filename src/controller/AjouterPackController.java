package controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.CategorieDaoImpl;
import dao.PackDaoImpl;
import dao.ProduitDaoImp;
import dao.SousCategorieDaoImpl;
import model.Categorie;
import model.Pack;
import model.Produit;
import model.SousCategorie;


@WebServlet("/AjouterPackController")
public class AjouterPackController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AjouterPackController() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final int TAILLE_TAMPON = 10240;
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
    	
    	List<String> extensionsImage = new ArrayList<String>();
    	extensionsImage.add("JPG");
    	extensionsImage.add("JPEG");
    	extensionsImage.add("PNG");
    	extensionsImage.add("jpg");
    	extensionsImage.add("jpeg");
    	extensionsImage.add("png");

    	Pack pack = new Pack(); //**********************************
    	PackDaoImpl packDao = new PackDaoImpl();  //***************************
    	
        // On récupère le champ du fichier
        Part part = request.getPart("image");
            
        // On vérifie qu'on a bien reçu un fichier
        String nomImage = getNomFichier(part);

        /*File f = new File(".");
        System.err.println("=="+f.getAbsolutePath());  */
        
        // Si on a bien un une image      Si on a pas d'image aucun traitement ne se feras
        if (nomImage != null && !nomImage.isEmpty()) {
            
            // Corrige un bug du fonctionnement d'Internet Explorer
        	nomImage = nomImage.substring(nomImage.lastIndexOf('/') + 1)
                    .substring(nomImage.lastIndexOf('\\') + 1);
           
             String extension = nomImage.substring(nomImage.lastIndexOf(".")+1);
             
             //Si l'image n'est pas correct aucune insertion ne se feras
             if (extensionsImage.contains(extension)){

            	 //On mets un nom aléatoire de taile 20
            	 nomImage = randomNom()+"."+extension;
            	 // On écrit définitivement l'image sur le disque
            	 ecrireFichier(part, nomImage, CHEMIN_IMAGES);
            	 int idP = randomId();
            	 pack.setImage(nomImage);   //*********************************
            	 pack.setTitre(request.getParameter("nomProduit"));
            	 pack.setDescription(request.getParameter("descriptionProduit"));
            	 pack.setId_produit_pack(idP);
            	 
            	 packDao.create(pack);   //******************************************
            	 String[] cheked = request.getParameterValues("ref");
            	 for (int i = 0; i < cheked.length; i++) {
            		 ProduitDaoImp Prodao = new ProduitDaoImp();
            		 int id = Integer.parseInt(cheked[i]);
            		 Produit p = Prodao.findById(id);
            		 
            		 PackDaoImpl pckDao = new PackDaoImpl();
            		 pckDao.addRef(idP, id, p.getNom());
            		 
            	     System.out.println(cheked[i]); 
            	 }
            	 
             }
  
        }
        doGet(request, response);
       //this.getServletContext().getRequestDispatcher("/ajouterProduit.jsp").forward(request, response);

    }

    private void ecrireFichier( Part part, String nomFichier, String chemin ) throws IOException {
        BufferedInputStream entree = null;
        BufferedOutputStream sortie = null;
        try {
            entree = new BufferedInputStream(part.getInputStream(), TAILLE_TAMPON);
            sortie = new BufferedOutputStream(new FileOutputStream(new File(chemin + nomFichier)), TAILLE_TAMPON);

            byte[] tampon = new byte[TAILLE_TAMPON];
            int longueur;
            while ((longueur = entree.read(tampon)) > 0) {
                sortie.write(tampon, 0, longueur);
            }
        } finally {
            try {
                sortie.close();
            } catch (IOException ignore) {
            }
            try {
                entree.close();
            } catch (IOException ignore) {
            }
        }
    }
    
    private static String getNomFichier( Part part ) {
        for ( String contentDisposition : part.getHeader( "content-disposition" ).split( ";" ) ) {
            if ( contentDisposition.trim().startsWith( "filename" ) ) {
                return contentDisposition.substring( contentDisposition.indexOf( '=' ) + 1 ).trim().replace( "\"", "" );
            }
        }
        return null;
    }   
    
    protected String randomNom() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 20) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;
    }
    
    protected int randomId() {
        String SALTCHARS = "1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 8) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        int id = Integer.parseInt(saltStr);
        return id;
    }
}