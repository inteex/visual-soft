package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Produit;

public class ProduitDaoImp implements ProduitDao{
	Connection conn=Db_connect.connect();
	@Override
	public boolean create(Produit produit) {
		String sql = "insert into produit value(?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, produit.getId());
			ps.setInt(2, produit.getPrix());
			ps.setString(3, produit.getImage());
			ps.setString(4, produit.getDescription());
			ps.setInt(3, produit.getId_sousCategorie());
			ps.setInt(2, produit.getQuantite());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	@Override
	public boolean delete(Produit p) {
		
		boolean verif = false ;
		String sql = "DELETE FROM produit WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, p.getId());
			
			verif=ps.execute();
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();	
		}
		
		return verif ;
	}

	@Override
	public boolean update(Produit produit) {
		String sql = "UPDATE produits set prix=?, image=?, description=?, sousCategorie=?, quantite=? where id=?";
		PreparedStatement ps;
		boolean verif = false ;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(6, produit.getId());
			ps.setInt(1, produit.getPrix());
			ps.setString(2, produit.getImage());
			ps.setString(3, produit.getDescription());
			ps.setInt(4, produit.getId_sousCategorie());
			ps.setInt(5, produit.getQuantite());
			verif = ps.execute();
			conn.close();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return verif ;
		
	}

	@Override
	public Produit findById(int id) {
		String sql = "Select * FROM produits WHERE id=?";
		PreparedStatement ps;
		ResultSet rs =null ;
		Produit produit=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if (rs.next()){
				produit = new Produit(
						rs.getInt(1),
						rs.getString(2), 
						rs.getString(3), 
						rs.getInt(4), 
						rs.getString(5), 
						rs.getInt(6), 
						rs.getString(7), 
						rs.getInt(8));
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return produit;
	}

	@Override
	public List<Produit> findAll() {
		String sql = "SELECT * FROM produits";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Produit> produits= new ArrayList<Produit>();
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
		
			rs=ps.executeQuery();
			while (rs.next()){
				Produit produit = new Produit(
						rs.getInt(1),
						rs.getString(2), 
						rs.getString(3), 
						rs.getInt(4), 
						rs.getString(5), 
						rs.getInt(6), 
						rs.getString(7), 
						rs.getInt(8)
						);
			
				produits.add(produit);
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return produits;
	}
	
	}

		

