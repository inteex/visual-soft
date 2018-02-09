package model;

import java.util.Date;

public class Contact {
	private int id ;
	private String nom ;
	private String telephone ;
	private String email ;
	private String message;
	private Date date=new Date() ;
	
	public Contact() {
	super();
	// TODO Auto-generated constructor stub
	}
	public Contact(int id, String nom, String telephone, String email, Date date) {
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
}
