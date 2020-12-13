package com.google.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalFactServlet
 */
public class CalFactServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//business
		String num=request.getParameter("pname");
	    int mmmmm=Integer.parseInt(num);
	    int result=1;
	    for(int i=2;i<=mmmmm;i++){
	    	result=result*i;
	    }
	    
	    try {
	        //database connectivity
	        //1. loading the driver
	         Class.forName("com.mysql.jdbc.Driver");
	         //Creating connection to the database
	         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hiet_cs_db",
	       		  "root","root");
	         //writing query
	         String sql="insert into fact_result_tbl (num,result) values(?,?)";
	         //creating prepared statement to set and execute the query
	         PreparedStatement pstmt=connection.prepareStatement(sql);
	         //setting the values into the query
	         pstmt.setInt(1,mmmmm);
	         pstmt.setInt(2,result);
	         //execute the query
	         int row=pstmt.executeUpdate();
	        }catch(Exception exception){
	       	 exception.printStackTrace();
	        }
	    
	    request.setAttribute("arun",result);//Integer
	    //forwarding to the jsp to show the result.
	    RequestDispatcher rd=request.getRequestDispatcher("sresult.jsp");
	    rd.forward(request, response);
	}

}
