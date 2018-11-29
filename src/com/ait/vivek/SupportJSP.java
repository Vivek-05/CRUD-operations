package com.ait.vivek;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SupportJSP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SupportJSP() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		try {

			List<User> user = UserDAO.DisplayAll();
			request.setAttribute("User", user);
			
			/*HttpSession session = request.getSession();
			session.setAttribute("User", user);
			
			ServletContext context = getServletContext();
			context.setAttribute("User", user);*/
			
		} catch (Exception e) {

			request.setAttribute("error", "Retrieving rows failed.");
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("JSPDisplay.jsp").forward(request, response);

	}

}
