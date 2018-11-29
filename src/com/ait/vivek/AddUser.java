package com.ait.vivek;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddUser() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("User Added...");

		UserDAO ud = new UserImpl();
		User u = new User();

		u.setUsername(request.getParameter("username"));
		u.setEmailid(request.getParameter("emailid"));
		u.setDob(request.getParameter("mob"));
		u.setMob(request.getParameter("dob"));
		u.setGender(request.getParameter("gender"));
		u.setPassword(request.getParameter("password"));

		ud.insertUser(u);

		response.setContentType("application/json;charset=UTF-8");

		ServletOutputStream out = response.getOutputStream();

		JsonConverter converter = new JsonConverter();

		String output = converter.convertToJson(u);

		out.print(output);

	}
}

/* response.getWriter().write(json); */