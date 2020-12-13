package com.feedback;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.print.attribute.standard.DateTimeAtCompleted;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CheckBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public CheckBooking() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String checkin=request.getParameter("checkin");
		String checkout=request.getParameter("checkout");
        String rooms=request.getParameter("rooms");
        String persons=request.getParameter("persons");


		 try {
		        //database connectivity
		        //1. loading the driver
		         Class.forName("com.mysql.jdbc.Driver");
		         //Creating connection to the database
		         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldatabase",
		       		  "root","");
		         //writing query
		         String sql="insert into reservation_tbl values(?,?,?,?)";
		         //creating prepared statement to set and execute the query
		         PreparedStatement pstmt=connection.prepareStatement(sql);
		         //setting the values into the query
		         pstmt.setString(1, checkin );
		         pstmt.setString(2, checkout );
                 pstmt.setInt(3,Integer.parseInt(rooms));
		         pstmt.setInt(4,Integer.parseInt(persons));

		         //execute the query
		         int row=pstmt.executeUpdate();
		        }catch(Exception exception){
		       	 exception.printStackTrace();
		        }
		         String result="Successfully Updated";
			    request.setAttribute("arun",result);//Integer

		    //forwarding to the jsp to show the result.
		    RequestDispatcher rd=request.getRequestDispatcher("checkresult.jsp");
		    rd.forward(request, response);
	}

}
