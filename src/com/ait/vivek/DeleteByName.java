package com.ait.vivek;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteByName extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteByName() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("requested accepted...");

		String sn = request.getParameter("username");

		UserDAO.deleteByName(sn);

		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write("true");

		/*
		 * if (response == null) {
		 * 
		 * System.out.println("response is null");
		 * 
		 * } else {
		 * 
		 * response.setContentType("text/html;charset=UTF-8");
		 * response.getWriter().write("Success Data"); } }
		 */
	}
}