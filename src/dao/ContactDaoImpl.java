package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Contact;

public class ContactDaoImpl implements ContactDao{
	
	Connection conn=Db_connect.connect();
	
	@Override
	public boolean create(Contact c) {
		String sql = "INSERT INTO contacts (id, date, nom, mail, telephone, message) VALUES (NULL, ?, ?, ?, ?, ?)";
		java.sql.PreparedStatement ps;
		try {
			ps =conn.prepareStatement(sql);
			
			ps.setDate(1, (Date) c.getDate());
			ps.setString(2, c.getNom());
			ps.setString(3, c.getEmail());
			ps.setString(4, c.getTelephone());
			ps.setString(4, c.getMessage());
			ps.execute();
			
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
		
	}
	

	@Override
	public boolean delete(Contact c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Contact c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Contact findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Contact> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
