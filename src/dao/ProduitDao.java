package dao;

import java.util.List;

import model.Produit;



public interface ProduitDao {

	public boolean create(Produit p);
	public boolean delete(Produit p);
	public boolean update(Produit p);
	public Produit findById(int id);
	public List<Produit> findAll();
	
}
