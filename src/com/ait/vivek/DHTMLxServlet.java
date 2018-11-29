package com.ait.vivek;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DHTMLxServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/xml");
		
		StringBuilder out = new StringBuilder();
		
		out.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		
		out.append("<rows>");

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection cn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testing", "vivek", "vivek");

			String query = "select * from registration";

			Statement ps = cn.createStatement();

			ResultSet rs = ps.executeQuery(query);

			while (rs.next()) {

				out.append("<row>");
				out.append("<cell>").append(rs.getString("username")).append("</cell>");
				out.append("<cell>").append(rs.getString("emailid")).append("</cell>");
				out.append("<cell>").append(rs.getString("mob")).append("</cell>");
				out.append("<cell>").append(rs.getString("dob")).append("</cell>");
				out.append("<cell>").append(rs.getString("gender")).append("</cell>");
				out.append("</row>");
				
				System.out.println("Try");

			}

		} catch (Exception e) {

			e.printStackTrace();
		}

		ServletOutputStream output = response.getOutputStream();
		
		out.append("</rows>");
		
		output.print(out.toString());
		
	}
}