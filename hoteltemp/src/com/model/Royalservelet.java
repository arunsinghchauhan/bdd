package com.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AuthServlet
 */
public class Royalservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Royalservelet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String userid = request.getParameter("userId");
		String password = request.getParameter("password");
		String accountType  = request.getParameter("accountType");

		boolean status=false;
		try {
				// loading the driver
				Class.forName("com.mysql.jdbc.Driver");
				// Connection points to the database
				Connection connection = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/hoteldatabase", "root", "");
				// Creating statement to execute query
				String sql = "select *  from royallogin_tbl where userid=? and password=? and acounttype=? ";
				PreparedStatement pstmt = connection.prepareStatement(sql);
				pstmt.setString(1, userid);
				pstmt.setString(2, password);
				pstmt.setString(3, accountType);
					//System.out.println(sql);
					//System.exit(0);
				// executing the query to the database
				ResultSet rs = pstmt.executeQuery();
			    if(rs.next()) {
			    	status=true;
				}
		} catch (Exception exception) {
             exception.printStackTrace();
		}
		
		String homePage=request.getParameter("accountType");
		//forward
		if(status){
				RequestDispatcher dispatcher=request.getRequestDispatcher(homePage+".jsp");
				dispatcher.forward(request, response);
		}else{
			RequestDispatcher dispatcher=request.getRequestDispatcher("royallogin.jsp");
			request.setAttribute("message","Sorry user is not valid !!!");
			dispatcher.forward(request, response);
		}

	}

}
