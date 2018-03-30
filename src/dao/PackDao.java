package dao;

import java.util.List;

import model.Pack;

public interface PackDao {

	public boolean create(Pack p);
	public boolean delete(Pack p);
	public boolean update(Pack p);
	public Pack findById(int id);
	public List<Pack> findBylimit(int limit);
	public int nbrElement();
	List<Pack> findNouveau(int limit);
}
