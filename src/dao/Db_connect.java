package dao;

import java.sql.Connection;
import java.sql.DriverManager;

import org.eclipse.jdt.internal.compiler.batch.Main;

public class Db_connect {
	
	public static Connection connect(){
		
		java.sql.Connection con =null ;
		
		 String url = "jdbc:mysql://localhost:3306/jee";
		 try {
			 
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,"root","");
			
			

			
		} catch (Exception e) {
			
			System.out.println("erreur");
			
		}
		 
		 return con ;
		
	}
	
	/*public static void main(String[] args) {
		
	System.out.println(	connect());
	}*/
	
	
}
