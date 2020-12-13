package com.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Calcreditinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Calcreditinfo() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pin1=request.getParameter("pin1");
		String pin2=request.getParameter("pin2");
		String pin3=request.getParameter("pin3");
		String pin4=request.getParameter("pin4");

		String DateOfExpiry=request.getParameter("DateOfExpiry");
		String DateOfExpiry1=request.getParameter("DateOfExpiry1");
		String DateOfExpiry2=request.getParameter("DateOfExpiry2");

		String amount=request.getParameter("amount");
		
		 try {
		        //database connectivity
		        //1. loading the driver
		         Class.forName("com.mysql.jdbc.Driver");
		         //Creating connection to the database
		         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldatabase",
		       		  "root","");
		         //writing query
		         String sql="insert into credit_tbl values(?,?,?)";
		         //creating prepared statement to set and execute the query
		         PreparedStatement pstmt=connection.prepareStatement(sql);
		         //setting the values into the query
		         pstmt.setInt(1,Integer.parseInt(pin1));
		         pstmt.setInt(1,Integer.parseInt(pin2));
		         pstmt.setInt(1,Integer.parseInt(pin3));
		         pstmt.setInt(1,Integer.parseInt(pin4));

		         pstmt.setString(2,DateOfExpiry);
		         pstmt.setString(2,DateOfExpiry1);
		         pstmt.setString(2,DateOfExpiry2);


		         pstmt.setInt(3,Integer.parseInt(amount));

		         //execute the query
		         int row=pstmt.executeUpdate();
		        }catch(Exception exception){
		       	 exception.printStackTrace();
		        }
		         String result="Successfully Updated";
			    request.setAttribute("arun",result);//Integer

		    //forwarding to the jsp to show the result.
		    RequestDispatcher rd=request.getRequestDispatcher("creditinforesult.jsp");
		    rd.forward(request, response);
	}

}
