package com.ait.vivek;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginRegister() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String submittype = request.getParameter("submit");
		
		UserDAO ud = new UserImpl();
		User u = new User();
		
		
		if (submittype.equals("login") || u.getUsername()!= null || u.getPassword()!= null) {
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			ud.getUser(username, password);

			request.setAttribute("message", "Welcome "+ u.getUsername());
			request.getRequestDispatcher("Welcome.jsp").forward(request, response);
			
		} else if (submittype.equals("register")) {

			u.setUsername(request.getParameter("username"));
			u.setEmailid(request.getParameter("emailid"));
			u.setDob(request.getParameter("mob"));
			u.setMob(request.getParameter("dob"));
			u.setGender(request.getParameter("gender"));
			u.setPassword(request.getParameter("password"));

			ud.insertUser(u);
				
			request.setAttribute("message1", "Succesfully registered...");
			request.getRequestDispatcher("Welcome.jsp").forward(request, response);

		} else {

			request.setAttribute("message", "Data Not Found");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
