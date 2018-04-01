package model;

public class Pack {

	private int id ;
	private String titre ;
	private String description ;
	private int id_produit_pack ;
	private String image ;
	private String nomRef;
	private int idProdRef ;
	private int idRef ;
	
	public Pack(int id, String titre, String description, int id_produit_pack, String image) {
		super();
		this.id = id;
		this.titre = titre;
		this.description = description;
		this.id_produit_pack = id_produit_pack;
		this.image = image;
	}
	
	public Pack(int idRef, int idProdRef, String nomRef) {
		super();
		this.idRef = idRef;
		this.idProdRef = idProdRef;
		this.nomRef = nomRef;
	}

	public Pack() {
		super();
	}
		
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId_produit_pack() {
		return id_produit_pack;
	}

	public void setId_produit_pack(int id_produit_pack) {
		this.id_produit_pack = id_produit_pack;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getNomRef() {
		return nomRef;
	}

	public void setNomRef(String nomRef) {
		this.nomRef = nomRef;
	}

	public int getIdProdRef() {
		return idProdRef;
	}

	public void setIdProdRef(int idProdRef) {
		this.idProdRef = idProdRef;
	}

	public int getIdRef() {
		return idRef;
	}

	public void setIdRef(int idRef) {
		this.idRef = idRef;
	}
	
	
}
