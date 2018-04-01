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
		String sql = "INSERT INTO produits (nom, description, prix, image, quantite, ficheT, id_Sous_categories,dateAjout) VALUES (?,?,?,?,?,?,?,CURDATE())";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, produit.getNom());
			ps.setString(2, produit.getDescription());
			ps.setInt(3, produit.getPrix());
			ps.setString(4, produit.getImage());
			ps.setInt(5, produit.getQuantite());
			ps.setString(6, produit.getFicheT());
			ps.setInt(7, produit.getId_sousCategorie());
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
	public List<Produit> findBylimit(int limit) {
		String sql = "SELECT * FROM produits ORDER BY id limit ?,6";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Produit> produits= new ArrayList<Produit>();
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, limit);
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
	
	
	@Override
	public List<Produit> findByCategorie(int id, int limit) {
		
		String sql = "SELECT * FROM produits WHERE id_Sous_categories IN (SELECT id FROM sous_categories WHERE id_categories IN (SELECT id_categories FROM sous_categories WHERE id = ?))ORDER BY RAND() LIMIT 0,?";

		PreparedStatement ps;
		ResultSet rs =null ;
		List<Produit> produits= new ArrayList<Produit>();
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, limit);
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

	@Override
	public int nbrElement() {
		String sql = "SELECT count(*) FROM produits";
		PreparedStatement ps;
		int nbr=0;
		ResultSet rs =null ;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
		rs=ps.executeQuery();
		if (rs.next()) nbr=rs.getInt(1);
		
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return nbr;
	}
	
	
	@Override
	public List<Produit> findNouveau(int limit) {
		String sql = "SELECT * FROM produits ORDER BY dateAjout desc limit ?";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Produit> produits= new ArrayList<Produit>();
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, limit);
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
	@Override
	public List<Produit> rechercher(String motCle,int limit) {
		String sql = "SELECT * FROM produits WHERE nom like ?  or description like ?  ORDER BY id limit ?,6";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Produit> produits= new ArrayList<Produit>();
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1,"%"+motCle+"%");
			ps.setString(2,"%"+motCle+"%");
			ps.setInt(3,limit);
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

	@Override

	public int nbrElementRech(String motCle) {
		String sql = "SELECT count(*) FROM produits WHERE nom like ?  or description like ?";
		PreparedStatement ps;
		int nbr=0;
		ResultSet rs =null ;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1,"%"+motCle+"%");
			ps.setString(2,"%"+motCle+"%");
		rs=ps.executeQuery();
		if (rs.next()) nbr=rs.getInt(1);
		
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return nbr;
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

		

