package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Pack;

public class PackDaoImpl implements PackDao{

		Connection conn=Db_connect.connect();
		@Override
		public boolean create(Pack pack) {
			String sql = "INSERT INTO pack (titre, description, date, image) VALUES (?,?,CURDATE(),?)";
			PreparedStatement ps;
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setString(1, pack.getTitre());
				ps.setString(2, pack.getDescription());
				ps.setString(3, pack.getImage());
				ps.execute();
				conn.close();
				
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				
				return false;
			}
		}

		@Override
		public boolean delete(Pack p) {
			
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
		public boolean update(Pack pack) {
			String sql = "UPDATE pack set titre=?, description=?, image=? where id=?";
			PreparedStatement ps;
			boolean verif = false ;
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				
				ps.setString(1, pack.getTitre());
				ps.setString(2, pack.getDescription());
				ps.setString(3, pack.getImage());
				ps.setInt(4, pack.getId());
				verif = ps.execute();
				conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
				
			}
			
			return verif ;
			
		}

		@Override
		public Pack findById(int id) {
			String sql = "Select * FROM pack WHERE id=?";
			PreparedStatement ps;
			ResultSet rs =null ;
			Pack pack = null ;
			
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setInt(1, id);
				rs=ps.executeQuery();
				if (rs.next()){
					pack = new Pack(
							rs.getInt(1),
							rs.getString(2), 
							rs.getString(3), 
							rs.getInt(4), 
							rs.getString(5)
							);
				}
				conn.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
			
			return pack;
		}

		@Override
		public List<Pack> findBylimit(int limit) {
			String sql = "SELECT * FROM pack ORDER BY id limit ?,6";
			PreparedStatement ps;
			ResultSet rs =null ;
			List<Pack> packs= new ArrayList<Pack>();
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setInt(1, limit);
				rs=ps.executeQuery();
				while (rs.next()){
					Pack pack = new Pack(
							rs.getInt(1),
							rs.getString(2), 
							rs.getString(3), 
							rs.getInt(4), 
							rs.getString(5)
							);
				
					packs.add(pack);
				}
				conn.close();
				
				
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
			
			return packs;
		}
		

		@Override
		public int nbrElement() {
			String sql = "SELECT count(*) FROM pack";
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
		public List<Pack> findNouveau(int limit) {
			String sql = "SELECT * FROM pack ORDER BY date desc limit ?";
			PreparedStatement ps;
			ResultSet rs =null ;
			List<Pack> packs= new ArrayList<Pack>();
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setInt(1, limit);
				rs=ps.executeQuery();
				while (rs.next()){
					Pack pack = new Pack(
							rs.getInt(1),
							rs.getString(2), 
							rs.getString(3), 
							rs.getInt(4), 
							rs.getString(5)
							);
				
					packs.add(pack);
				}
				conn.close();
				
				
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
			
			return packs;
		}
		
		public boolean addRef(int id, int idP, String nom) {
			String sql = "INSERT INTO produit_pack (id , id_produit, titre_produit) VALUES (?,?,?)";
			PreparedStatement ps;
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setInt(1, id);
				ps.setInt(2, idP);
				ps.setString(3, nom);
				ps.execute();
				conn.close();
				
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				
				return false;
			}
		}

		
		}

