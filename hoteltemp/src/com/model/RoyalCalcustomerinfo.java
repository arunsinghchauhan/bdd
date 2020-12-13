package com.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utils.DateUtils;


public class RoyalCalcustomerinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RoyalCalcustomerinfo() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customername=request.getParameter("customername");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String country=request.getParameter("country");
		String phone=request.getParameter("phone");
		if(phone==null || phone.length()==0){
			phone="0";
		}
		String idproof=request.getParameter("idproof");
		String idnumber=request.getParameter("idnumber");
		String email=request.getParameter("email");
		
		String noofadult=request.getParameter("noofadult");
		if(noofadult==null || noofadult.length()==0){
			noofadult="0";
		}
		String noofminor=request.getParameter("noofminor");
		if(noofminor==null || noofminor.length()==0){
			noofminor="0";
		}
		String choosebank=request.getParameter("choosebank");
		String enterpin=request.getParameter("enterpin");
		String expirydate=request.getParameter("expirydate");
		String amount=request.getParameter("amount");
		
		String roomno=request.getParameter("roomno");
		String checkin=request.getParameter("checkin");
		//String checkinTokens[]=checkin.split("-");
	   //checkin=checkinTokens[2]+"-"+checkinTokens[1]+"-"+checkinTokens[0];
		String checkout=request.getParameter("checkout");
	//	String checkoutTokens[]=checkout.split("-");
		//checkout=checkoutTokens[2]+"-"+checkoutTokens[1]+"-"+checkoutTokens[0];
		System.out.println("checkin = "+checkin);
		System.out.println("checkout = "+checkout);
	    
	    try {
	        //database connectivity
	        //1. loading the driver
	         Class.forName("com.mysql.jdbc.Driver");
	         //Creating connection to the database
	         Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoteldatabase",
	       		  "root","");
	         //writing query
	         String sql="insert into royalcustomerinfo_tbl values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	         //creating prepared statement to set and execute the query
	         PreparedStatement pstmt=connection.prepareStatement(sql);
	         //setting the values into the query
	         pstmt.setString(1,customername);
	         pstmt.setString(2,address);
	         pstmt.setString(3,city);
	         pstmt.setString(4,country);
	         pstmt.setString(5,phone);
	         pstmt.setString(6,idproof);
	         pstmt.setString(7,idnumber);
	         pstmt.setString(8,email);
	         pstmt.setString(9,noofadult);
	         pstmt.setString(10,noofminor);
	         pstmt.setString(11,choosebank);
	         pstmt.setString(12,enterpin);
	         pstmt.setString(13,expirydate);
	         pstmt.setString(14,amount);
	        // pstmt.setInt(9,Integer.parseInt(noofminor));

	         //execute the query
	         int row=pstmt.executeUpdate();
	         //int intRoom=Integer.parseInt(roomNo);
	          long forderId=System.currentTimeMillis();
	          String corderId="C0"+String.valueOf(forderId);
	          
	         /* pstmt=connection.prepareStatement("update roomavailable_tbl set roomavailable='No' where roomno="+intRoom);
	          pstmt.executeUpdate();*/
	          
	          pstmt=connection.prepareStatement("insert into royalbookroominfo_tbl values(?,?,?,?,?,?,?,?)");
	          pstmt.setString(1,corderId);
	          pstmt.setString(2, roomno+"");
	          
	          SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	          java.util.Date pcheckin = format.parse(checkin);
	          java.util.Date pcheckout = format.parse(checkout);
	          System.out.println("pcheckin = "+pcheckin);
	          System.out.println("pcheckout = "+pcheckout);
	          
	          System.out.println("new java.sql.Date(pcheckin.getTime()) = "+new java.sql.Date(pcheckin.getTime()));
	          System.out.println("java.sql.Date(pcheckout.getTime() = "+new java.sql.Date(pcheckout.getTime()));
	          
	          pstmt.setDate(3,new java.sql.Date(pcheckin.getTime()));
	          pstmt.setDate(4,new java.sql.Date(pcheckout.getTime()));
	          pstmt.setString(5,customername);
	          pstmt.setString(6,idproof);
              pstmt.setString(7,idnumber);
              pstmt.setString(8,enterpin);
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
