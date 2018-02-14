package model;

import dao.ContactDaoImpl;

public class Produit {
	private int id ;
	private String nom ;
	private String description ;
	private int prix ;
	private String Image ;
	private int quantite;
	private String ficheT;
	private int id_sousCategorie;
	
	public Produit(int id, String nom, String description, int prix, String image, int quantite, String ficheT,
			int id_sousCategorie) {
		super();
		this.id = id;
		this.nom = nom;
		this.description = description;
		this.prix = prix;
		Image = image;
		this.quantite = quantite;
		this.ficheT = ficheT;
		this.id_sousCategorie = id_sousCategorie;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrix() {
		return prix;
	}

	public void setPrix(int prix) {
		this.prix = prix;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public String getFicheT() {
		return ficheT;
	}

	public void setFicheT(String ficheT) {
		this.ficheT = ficheT;
	}

	public int getId_sousCategorie() {
		return id_sousCategorie;
	}

	public void setId_sousCategorie(int id_sousCategorie) {
		this.id_sousCategorie = id_sousCategorie;
	}

	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
