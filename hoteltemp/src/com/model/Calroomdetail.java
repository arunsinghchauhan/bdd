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


public class Calroomdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Calroomdetail() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roomno=request.getParameter("roomno");
		String roomtype=request.getParameter("roomtype");
		String bedtype=request.getParameter("bedtype");
		String bill=request.getParameter("bill");
		if(bill==null || bill.length()==0){
			bill="0";
		}
		
	    
	    try {
	        //database connectivity
	        //1. loading the driver
	         Class.forName("com.mysql.jdbc.Driver");
	         //Creating connection to the database
	         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldatabase",
	       		  "root","");
	         //writing query
	         String sql="insert into totalroom_tbl values(?,?,?,?)";
	         //creating prepared statement to set and execute the query
	         PreparedStatement pstmt=connection.prepareStatement(sql);
	         //setting the values into the query
	        // pstmt.setInt(1,Integer.parseInt(roomno));
	         pstmt.setString(1,roomno);
	         pstmt.setString(2,roomtype);
	         pstmt.setString(3,bedtype);
	         pstmt.setString(4,bill);
	         //pstmt.setInt(4,Integer.parseInt(bill));

	         //execute the query
	         int row=pstmt.executeUpdate();
	        }catch(Exception exception){
	       	 exception.printStackTrace();
	        }
	         String result="Successfully Updated";
		    request.setAttribute("arun",result);//Integer

	    //forwarding to the jsp to show the result.
	    RequestDispatcher rd=request.getRequestDispatcher("roomdetailresult.jsp");
	    rd.forward(request, response);
	}

}
