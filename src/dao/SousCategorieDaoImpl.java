package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Produit;
import model.SousCategorie;

public class SousCategorieDaoImpl implements SousCategorieDao{
	Connection conn=Db_connect.connect();
	
	@Override
	public boolean create(SousCategorie c) {
		String sql = "insert into sous_categories value(?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, c.getId());
			ps.setString(2, c.getNom());
			ps.setInt(3, c.getId_categories());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
		
	}

	@Override
	public boolean delete(SousCategorie c) {
		String sql = "DELETE FROM sous_categories WHERE id=?";
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
	public boolean update(SousCategorie c){
		String sql = "UPDATE sous_categories set nom=? where id= ?";
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

	/*@Override
	public SousCategorie findById(int id) {
		String sql = "Select * from sous_categories WHERE id=?";
		PreparedStatement ps;
		ResultSet rs =null ;
		SousCategorie SousCategorie=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next()){
				SousCategorie = new SousCategorie (
				rs.getInt("id"),
				rs.getString("nom")
				
				);
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return SousCategorie;
		
	}
*/
	@Override
	public List<SousCategorie> findAll() {
		String sql = "SELECT * FROM sous_categories";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<SousCategorie> sousCategories= new ArrayList<SousCategorie>();
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				SousCategorie sousCategorie= new SousCategorie(
				rs.getInt(1),
				rs.getString(2),
				rs.getInt(3));
				sousCategories.add(sousCategorie);
			}
			
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return sousCategories;
	}

	@Override
	public SousCategorie findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	/*@Override
	public List<SousCategorie> findbyCategorie(int id_categories) {
		// TODO Auto-generated method stub
		return null;
	}*/

	
	@Override
	public List<SousCategorie> findbyCategorie(int id_categories) {
		String sql = "Select * from sous_categories WHERE id_categories=?";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<SousCategorie> SousCategorie= new ArrayList<SousCategorie>();
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id_categories);
			rs=ps.executeQuery();
			while(rs.next()){
				SousCategorie sousCategorie= new SousCategorie(
				rs.getInt("id"),
				rs.getString("nom"),
				rs.getInt("id_categories"));
				
				SousCategorie.add(sousCategorie);
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return SousCategorie;
	}
	
}
