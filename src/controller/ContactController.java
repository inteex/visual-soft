package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.ContactDaoImpl;
import model.Contact;

/**
 * Servlet implementation class ContactCtrlr
 */
@WebServlet("/ContactCtrlr")
public class ContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("nom");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String message = request.getParameter("message");
		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
		
		
		Contact contacteModel = new Contact();
		ContactDaoImpl contacte = new ContactDaoImpl();
		
		contacteModel.setNom(name);
		contacteModel.setDate(date);
		contacteModel.setEmail(email);
		contacteModel.setMessage(message);;
		contacteModel.setTelephone(tel);
		

		contacte.create(contacteModel);

		}
		
	}






























