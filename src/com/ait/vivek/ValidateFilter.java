package com.ait.vivek;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ValidateFilter implements Filter {

	public ValidateFilter() {
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String emailid = request.getParameter("emailid");
		String mob = request.getParameter("mob");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");

			if (username.equals("")) {

				out.println("User name is Required");
			} else if (emailid.equals("")) {

				out.println("Email ID is Required");
			} else if (mob.equals("")) {

				out.println("Mobile number is Required");
			} else if (dob.equals("")) {

				out.println("Date of Birth is Empty Fill Field First");
			} else if (gender.equals("")) {

				out.println("Gender is Required");
			} else if (password.equals("")) {

				out.println("password is Required");
			} else {

				chain.doFilter(request, response);

			}
		}

	public void destroy() {

	}

}