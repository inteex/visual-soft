package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Utilisateur;

public class UtilisateurDaoImpl implements UtilisateurDao {
	Connection conn = Db_connect.connect();
	@Override
	public boolean create(Utilisateur u) {
		String sql = "insert into utilisateur values(?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, u.getId());
			ps.setString(2, u.getNom());
			ps.setString(3, u.getPrenom());
			ps.setString(4, u.getRole());
			ps.setString(5, u.getLogin());
			ps.setString(6, u.getPassword());
			ps.execute();
			conn.close();
			
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
	public Utilisateur update(Utilisateur u) {
		// TODO Auto-generated method stub
		return null;
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

}
