<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#accfff">
  <%
     String num=request.getParameter("pname");
     //Integer is class and parseInt is static method inside it  
     int n=Integer.parseInt(num);
   	  int result=1;
     for(int p=2;p<=n;p++) {
    	 result=result*p;
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
      pstmt.setInt(1,n);
      pstmt.setInt(2,result);
      //execute the query
      int row=pstmt.executeUpdate();
     }catch(Exception exception){
    	 exception.printStackTrace();
     }
     
  %>

  <h2>Result is <%= result %></h2>

</body>
</html>