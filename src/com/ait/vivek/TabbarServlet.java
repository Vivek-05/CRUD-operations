package com.ait.vivek;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TabbarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TabbarServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/xml");

		StringBuilder out = new StringBuilder();

		out.append("<?xml version='1.0' encoding='UTF-8'?>");

		out.append("<tabbar>");
		out.append("<row>");
		
		out.append("<tab id='tab1' href='DhtmlxView.jsp' selected='true'>DhtmlxGrid</tab>");
		out.append("<tab id='tab2' width='200' href='DhtmlxGridEx.html'>DhtmlxContextMenu</tab>");
		out.append("<tab id='tab3' width='200' href='AccordianEx.html'>DhtmlxAccordion</tab>");
		out.append("<tab id='tab4' width='100' href='register.jsp'>New Registration</tab>");
		
		out.append("</row>");
		
		ServletOutputStream output = response.getOutputStream();

		out.append("</tabbar>");

	    output.print(out.toString());

	}

}