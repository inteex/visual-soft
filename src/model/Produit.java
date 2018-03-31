package model;

public class Produit {
	private int id ;
	private String nom ;
	private String description ;
	private int prix ;
	private String image ;
	private int quantite;
	private String ficheT;
	private int id_sousCategorie;
	private String categorie;
	private String sousCategorie;

	public Produit(int id, String nom, String description, int prix, String image, int quantite, String ficheT,
			int id_sousCategorie) {
		super();
		this.id = id;
		this.nom = nom;
		this.description = description;
		this.prix = prix;
		this.image = image;
		this.quantite = quantite;
		this.ficheT = ficheT;
		this.id_sousCategorie = id_sousCategorie;
	}
	
	public Produit(int id, String nom, String image, String sousCategorie, String categorie) {
		super();
		this.id = id;
		this.nom = nom;
		this.image = image;
		this.sousCategorie = sousCategorie;
		this.categorie = categorie;
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
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public String getSousCategorie() {
		return sousCategorie;
	}

	public void setSousCategorie(String sousCategorie) {
		this.sousCategorie = sousCategorie;
	}

	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
