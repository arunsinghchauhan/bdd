package com.google.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author astha
 *  I want HelloServlet , should become a servlet
 */
public class AmogWorld extends HttpServlet {
	public void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws IOException {

		ServletConfig config=getServletConfig(); 	
	    String status=config.getInitParameter("welcome");
	    response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		if(status.equals("yes")) {
		  pw.println("****************WECLOME************************");
		}
		pw.println("<h1>Hello I am Servlet !!!<h1>");

		if(status.equals("yes")) {
	      pw.println("************************************************");
	    }

	
	}
}





