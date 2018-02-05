package model;

public class Utilisateur {
	private String nom ;
	private String prenom ;
	private int id ;
	private String role ; 
	private String login ;
	private String password ;
	public Utilisateur() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Utilisateur(String nom, String prenom, int id, String role, String login, String password) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.id = id;
		this.role = role;
		this.login = login;
		this.password = password;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Utilisateur [nom=" + nom + ", prenom=" + prenom + ", id=" + id + ", role=" + role + ", login=" + login
				+ ", password=" + password + "]";
	} 
	
}
