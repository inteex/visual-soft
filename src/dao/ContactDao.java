package dao;

import java.util.List;

import model.Contact;


public interface ContactDao {

	public boolean create(Contact c);
	public boolean delete(Contact c);
	public boolean update(Contact c);
	public Contact findById(int id);
	public List<Contact> findAll();	
}
