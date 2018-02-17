package dao;

import java.util.List;


import model.SousCategorie;

public interface SousCategorieDao {

	public boolean create(SousCategorie c);
	public boolean delete(SousCategorie c);
	public boolean update(SousCategorie c);
	public SousCategorie findById(int id);
	public List<SousCategorie> findAll();
	public List<SousCategorie> findbyCategorie(int id_categories);
}
