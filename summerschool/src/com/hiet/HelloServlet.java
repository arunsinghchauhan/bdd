package com.hiet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
public class HelloServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		//accessing the reference of response body
		PrintWriter pw=response.getWriter();
		pw.println("<html>");
		pw.println("<body bgcolor=\"#accddd\">");
		for(int x=0;x<5;x++){
			pw.println("<h2>Hello Servlet we welcome you!</h2>");
		}
		pw.println("</body>");
		pw.println("</html>");
		
	}
}
