package com.ait.vivek;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DisplayALLUser extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public DisplayALLUser() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter(); 

		List<User> list = UserDAO.DisplayAll();

		out.print("<table border='1'  width='100%'>");

		out.print("<tr><th>Name</th><th>Email ID</th><th>Mobile No.</th><th>Date Of Birth</th><th>Geneder</th><th>Delete</th></tr>");

		for (User u : list) {
			out.print("<tr><td>"+u.getUsername()+"</td><td>"+u.getEmailid()+"</td><td>"+u.getMob()+"</td><td>"+u.getDob()+"</td><td>"+u.getGender()+"</td><td><a href=DeleteByName?username="+u.getUsername()+">Delete</a></td></tr>");
		}
		out.print("</table>");

		out.close();

	}
}