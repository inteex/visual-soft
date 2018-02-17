package controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.ProduitDaoImp;
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
    public static final String CHEMIN_FICHIERS = "C://Users/Salim TABET/Documents/uploadImages/";
    /**
     * handles file upload
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	List<String> extensionsImage = new ArrayList<String>(3);
    	extensionsImage.add("JPG");
    	extensionsImage.add("JPEG");
    	extensionsImage.add("PNG");
    	extensionsImage.add("jpg");
    	extensionsImage.add("jpeg");
    	extensionsImage.add("png");
    	
        // On récupère le champ du fichier
        Part part = request.getPart("image");
            
        // On vérifie qu'on a bien reçu un fichier
        String nomFichier = getNomFichier(part);

        /*File f = new File(".");
        System.err.println("=="+f.getAbsolutePath());  */
        
        // Si on a bien un fichier
        if (nomFichier != null && !nomFichier.isEmpty()) {
            
            // Corrige un bug du fonctionnement d'Internet Explorer
             nomFichier = nomFichier.substring(nomFichier.lastIndexOf('/') + 1)
                    .substring(nomFichier.lastIndexOf('\\') + 1);
             System.out.println(nomFichier);
             String extension = nomFichier.substring(nomFichier.lastIndexOf(".")+1);
             
             if (extensionsImage.contains(extension)){
            	 // On écrit définitivement le fichier sur le disque
            	 ecrireFichier(part, nomFichier, CHEMIN_FICHIERS);
             }
       
           
        }

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
}