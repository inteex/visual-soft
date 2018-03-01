package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Produit;
import model.Utilisateur;

public class UtilisateurDaoImpl implements UtilisateurDao {
	Connection con = Db_connect.connect();
	@Override
	public boolean create(Utilisateur u) {
		String sql = "insert into utilisateur values(?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setInt(1, u.getId());
			ps.setString(2, u.getNom());
			ps.setString(3, u.getPrenom());
			ps.setString(4, u.getRole());
			ps.setString(5, u.getLogin());
			ps.setString(6, u.getPassword());
			ps.execute();
			
			con.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Utilisateur u) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Utilisateur u) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Utilisateur findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Utilisateur> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean check(String user, String pass) {
		String sql = "SELECT * FROM admin WHERE user=?";
		boolean result =false ;
		PreparedStatement ps;
		ResultSet rs =null ;
		
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1 , user);
			rs=ps.executeQuery();
			if (rs.next()){
				if (pass.equals(rs.getString("mdp")))
					
					result=true ;
			
				
			}
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		
		return result;
	}

}
