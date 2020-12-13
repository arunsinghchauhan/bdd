package com.feedback;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Fdpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Fdpage() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String feedback=request.getParameter("feedback");
		
	    
	    try {
	        //database connectivity
	        //1. loading the driver
	         Class.forName("com.mysql.jdbc.Driver");
	         //Creating connection to the database
	         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldatabase",
	       		  "root","");
	         //writing query
	         String sql="insert into feedback_tbl values(?)";
	         //creating prepared statement to set and execute the query
	         PreparedStatement pstmt=connection.prepareStatement(sql);
	         //setting the values into the query
	         pstmt.setString(1,feedback);
	         
	         //execute the query
	         int row=pstmt.executeUpdate();
	        }catch(Exception exception){
	       	 exception.printStackTrace();
	        }
	         String result="Successfully Updated";
		    request.setAttribute("arun",result);//Integer

	    //forwarding to the jsp to show the result.
	    RequestDispatcher rd=request.getRequestDispatcher("feedbackresult.jsp");
	    rd.forward(request, response);
	}

}
