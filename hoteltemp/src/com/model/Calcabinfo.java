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

/**
 * Servlet implementation class Calcabinfo
 */
public class Calcabinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calcabinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cname=request.getParameter("cname");
		String email=request.getParameter("email");
		if(email==null || email.length()==0){
			email="0";
		}
		String phone=request.getParameter("phone");
		if(phone==null || phone.length()==0){
			phone="0";
		}
		String address=request.getParameter("address");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String passenger=request.getParameter("passenger");
		String date=request.getParameter("date");
		String hour=request.getParameter("hour");
		String min=request.getParameter("min");
		String period=request.getParameter("period");
		String choosebank=request.getParameter("choosebank");
		String enterpin=request.getParameter("enterpin");
		String expirydate=request.getParameter("expirydate");
		String amount=request.getParameter("amount");
		
		String sno=request.getParameter("sno");
		
		  try {
		        //database connectivity
		        //1. loading the driver
		         Class.forName("com.mysql.jdbc.Driver");
		         //Creating connection to the database
		         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldatabase",
		       		  "root","");
		         //writing query
		         String sql="insert into cab1_tbl values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		         //creating prepared statement to set and execute the query
		         PreparedStatement pstmt=connection.prepareStatement(sql);
		         //setting the values into the query
		         pstmt.setString(1,cname);
		         pstmt.setString(2,email);
		         pstmt.setString(3,phone);
		         pstmt.setString(4,address);
		         pstmt.setString(5,from);
		         pstmt.setString(6,to);
		         pstmt.setString(7,passenger);
		         pstmt.setString(8,date);
		         pstmt.setString(9,hour);
		         pstmt.setString(10,min);
		         pstmt.setString(11,period);
		         pstmt.setString(12,choosebank);
		         pstmt.setString(13,enterpin);
		         pstmt.setString(14,expirydate);
		         pstmt.setString(15,amount);
		        // pstmt.setInt(9,Integer.parseInt(noofminor));

		         //execute the query
		         int row=pstmt.executeUpdate();
		         int intSno=Integer.parseInt(sno);
		          
		          
		         pstmt=connection.prepareStatement("update cabavailable_tbl set available='No' where sno="+intSno);
		          pstmt.executeUpdate();
		  }catch(Exception exception){
		       	 exception.printStackTrace();
		        }
		         String result="Successfully Updated";
			    request.setAttribute("arun",result);//Integer

		    //forwarding to the jsp to show the result.
		    RequestDispatcher rd=request.getRequestDispatcher("customerinforesult.jsp");
		    rd.forward(request, response);
		}

	

		          
	}


