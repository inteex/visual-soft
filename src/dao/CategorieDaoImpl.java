package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Categorie;
import model.Produit;

public class CategorieDaoImpl implements CategorieDao{
	Connection conn=Db_connect.connect();
	
	@Override
	public boolean create(Categorie c) {
		String sql = "insert into categorie value(?,?)";
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
		String sql = "DELETE FROM categorie WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, c.getId());
			
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	@Override
	public boolean update(Categorie c) {
		String sql = "UPDATE categorie set nom=? where id= ?";
		PreparedStatement ps;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(2, c.getId());
			ps.setString(1, c.getNom());
		
			ps.execute();
			conn.close();
			
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Categorie findById(int id) {
		String sql = "Select * from categorie WHERE id=?";
		PreparedStatement ps;
		ResultSet rs =null ;
		Categorie categorie=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next()){
				categorie = new Categorie (
				rs.getInt("id"),
				rs.getString("nom")
				
				);
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return categorie;
		
	}

	@Override
	public List<Categorie> findAll() {
		String sql = "Select * from categories";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Categorie> categories= new ArrayList<Categorie>();
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				Categorie categorie= new Categorie(
				rs.getInt(1),
				rs.getString(2));
				categories.add(categorie);
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return categories;
	}

	
}
