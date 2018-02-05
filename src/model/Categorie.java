package model;

public class Categorie {
	
 private int id ;
 private String nom ;
 
 
	public Categorie(int id, String nom) {
	
	this.id = id;
	this.nom = nom;
	
	}
	
	public Categorie() {
		super();
		
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

	@Override
	public String toString() {
		return "Categorie [id=" + id + ", nom=" + nom + "]";
	}

	
}
