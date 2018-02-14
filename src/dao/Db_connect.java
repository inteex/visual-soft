package dao;

import java.sql.Connection;
import java.sql.DriverManager;

import org.eclipse.jdt.internal.compiler.batch.Main;

import model.Produit;

public class Db_connect {
	static Connection con=null;
	public static Connection connect(){
		
		 con =null ;
		
		 String url = "jdbc:mysql://localhost:3306/visual-soft";
		 try {
			 
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,"root","");
			
		

			
		} catch (Exception e) {
			
			System.out.println("erreur");
			
		}
		 
		 return con ;
		
	}
	
		/*public static void main(String[] args) {
		ProduitDaoImp p = new ProduitDaoImp();
		for(Produit pr : p.findAll())
		System.out.println(pr.getId());
	}*/
	
	
	
}
