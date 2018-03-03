package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UtilisateurDaoImpl;
import model.Utilisateur;

/**
 * Servlet implementation class Login
 */
@WebServlet("/LoginAdmin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String pw = request.getParameter("pw");
		UtilisateurDaoImpl u = new UtilisateurDaoImpl();
		if (u.check(user, pw)){
			
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}else
			
		this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}

}
