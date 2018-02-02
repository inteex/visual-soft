package dao;

import java.util.List;

import model.Categorie;

public interface CategorieDao {
	
	public boolean create(Categorie c);
	public boolean delete(Categorie c);
	public Categorie update(Categorie c);
	public Categorie findById(int id);
	public List<Categorie> findAll();
}
