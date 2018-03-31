package model;

public class SousCategorie {

	private int id ;
	private String nom ;
	private int id_categories ;

	
	
	public SousCategorie(int id, String nom, int id_categories) {
		super();
		this.id = id;
		this.nom = nom;
		this.id_categories = id_categories;
	}
	public SousCategorie() {
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
	
	public int getId_categories() {
		return id_categories;
	}

	public void setId_categories(int id_categories) {
		this.id_categories = id_categories;
	}
	
}
