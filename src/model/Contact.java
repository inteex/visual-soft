package model;

import java.sql.Timestamp;

public class Contact {
	private int id ;
	private String nom ;
	private String telephone ;
	private String email ;
	private String message;
	private Timestamp date ;
	
	public Contact() {
	super();
	// TODO Auto-generated constructor stub
	}
	public Contact(int id, String nom, String telephone, String email, Timestamp date) {
	super();
	this.id = id;
	this.nom = nom;
	this.telephone = telephone;
	this.email = email;
	this.date = date;
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
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date2) {
		this.date = date2;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
}
