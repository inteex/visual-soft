package controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.CategorieDaoImpl;
import dao.ProduitDaoImp;
import dao.SousCategorieDaoImpl;
import model.Categorie;
import model.Produit;
import model.SousCategorie;
@WebServlet("/AjouterProduitController")

public class AjouterProduitController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
     * Name of the directory where uploaded files will be saved, relative to
     * the web application directory.
     */

    public static final int TAILLE_TAMPON = 10240;
    public static final String CHEMIN_IMAGES = "C://Users/Salim TABET/Documents/VisualSoft/uploadImages/";
    public static final String CHEMIN_FICHIERS = "C://Users/Salim TABET/Documents/VisualSoft/uploadFichier/";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	CategorieDaoImpl listCategorie = new CategorieDaoImpl();
		List<Categorie> listCategories = listCategorie.findAll();
		SousCategorieDaoImpl listSousCategorie = new SousCategorieDaoImpl();
		List<SousCategorie> listSousCategories = listSousCategorie.findAll();
		
		request.setAttribute("listCategories", listCategories);
		request.setAttribute("listSousCategories", listSousCategories);

		this.getServletContext().getRequestDispatcher("/ajouterProduit.jsp").forward(request, response);
	}
    
    /**
     * handles file upload
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	List<String> extensionsImage = new ArrayList<String>();
    	extensionsImage.add("JPG");
    	extensionsImage.add("JPEG");
    	extensionsImage.add("PNG");
    	extensionsImage.add("jpg");
    	extensionsImage.add("jpeg");
    	extensionsImage.add("png");
    	List<String> extensionsFichier = new ArrayList<String>();
    	extensionsFichier.add("PDF");
    	extensionsFichier.add("pdf");
    	extensionsFichier.add("DOC");
    	extensionsFichier.add("doc");
    	extensionsFichier.add("DOCX");
    	extensionsFichier.add("docx");
    	
    	Produit prod = new Produit(); //**********************************
    	ProduitDaoImp prodDAO = new ProduitDaoImp();  //***************************
    	
        // On récupère le champ du fichier
        Part part = request.getPart("image");
        Part partf = request.getPart("fichier");
            
        // On vérifie qu'on a bien reçu un fichier
        String nomImage = getNomFichier(part);
        String nomFichier = getNomFichier(partf);

        /*File f = new File(".");
        System.err.println("=="+f.getAbsolutePath());  */
        
        // Si on a bien un une image           Si on a pas d'image aucun traitement ne se feras
        if (nomImage != null && !nomImage.isEmpty()) {
            
            // Corrige un bug du fonctionnement d'Internet Explorer
        	nomImage = nomImage.substring(nomImage.lastIndexOf('/') + 1)
                    .substring(nomImage.lastIndexOf('\\') + 1);
           
             String extension = nomImage.substring(nomImage.lastIndexOf(".")+1);
             
             //Si l'image n'est pas correct aucune insertion ne se feras
             if (extensionsImage.contains(extension)){
            	 
            	// Traitment du fichier S'il existe
             	if(nomFichier != null && !nomFichier.isEmpty()) {
             		nomFichier = nomFichier.substring(nomFichier.lastIndexOf('/') + 1)
                             .substring(nomFichier.lastIndexOf('\\') + 1);
             		
             		String extensionf = nomFichier.substring(nomFichier.lastIndexOf(".")+1);
             		
             		if (extensionsFichier.contains(extensionf)){
             			nomFichier = randomNom()+"."+extensionf;
             			ecrireFichier(partf, nomFichier, CHEMIN_FICHIERS);
             		}
             		
             	}
            	 //On mets un nom aléatoire de taile 20
            	 nomImage = randomNom()+"."+extension;
            	 // On écrit définitivement l'image sur le disque
            	 ecrireFichier(part, nomImage, CHEMIN_IMAGES);
            	 
            	 prod.setImage(nomImage);   //*********************************
            	 prod.setNom(request.getParameter("nomProduit"));
            	 prod.setPrix(Integer.parseInt(request.getParameter("prix")));
            	 prod.setId_sousCategorie(Integer.parseInt(request.getParameter("categorie")));
            	 prod.setDescription(request.getParameter("descriptionProduit"));
            	 prod.setFicheT(nomFichier);
            	 
            	 prodDAO.create(prod);   //******************************************
            	 
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
}