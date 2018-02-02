package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Categorie;

public class CategorieDaoImpl implements CategorieDao{
	Connection conn=Db_connect.connect();
	
	@Override
	public boolean create(Categorie c) {
		String sql = "insert into category value(?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, c.getId());
			ps.setString(2, c.getNom());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean delete(Categorie c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Categorie update(Categorie c) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Categorie findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Categorie> findAll() {
		String sql = "Select * from category";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Categorie> categories= null;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				Categorie categorie= new Categorie(
				rs.getInt("id"),
				rs.getString("nom"));
				categories.add(categorie);
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return categories;
	}

	
}
