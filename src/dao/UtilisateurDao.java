package dao;

import java.util.List;

import model.Utilisateur;


public interface UtilisateurDao {

	public boolean create(Utilisateur u);
	public boolean delete(Utilisateur u);
	public Utilisateur update(Utilisateur u);
	public Utilisateur findById(int id);
	public List<Utilisateur> findAll();
	
	
}