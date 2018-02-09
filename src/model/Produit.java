package model;

import dao.ContactDaoImpl;

public class Produit {
	private int id ;
	private int prix ;
	private String Image ;
	private String description ;
	private String sousCategorie;
	private int quantite ;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSousCategorie() {
		return sousCategorie;
	}
	public void setSousCategorie(String sousCategorie) {
		this.sousCategorie = sousCategorie;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	
	public Produit(int id, int prix, String image, String description, String sousCategorie, int quantite) {
		super();
		this.id = id;
		this.prix = prix;
		Image = image;
		this.description = description;
		this.sousCategorie = sousCategorie;
		this.quantite = quantite;
	}
	
	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
	

}
