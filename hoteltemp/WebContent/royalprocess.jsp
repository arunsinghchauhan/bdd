<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Read data through jdbc</title>
</head>
<body bgcolor="#ababab">
 <%
     String roomno=request.getParameter("roomno");
     String roomtype=request.getParameter("roomtype");
     String bedtype=request.getParameter("bedtype");
     String bill=request.getParameter("bill");
    
    
   //loading the driver
   try{
		Class.forName("com.mysql.jdbc.Driver");
		//Connection points to the database
		Connection connection=DriverManager.
				getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
		//Creating statement to execute query
		String sql="insert into royaltotalroom_tbl values(?,?,?,?)";
		PreparedStatement pstmt=connection.prepareStatement(sql);
     //setting the values into the query
		pstmt.setString(1, roomno);
		pstmt.setString(2, roomtype);
        pstmt.setString(3,bedtype);
		pstmt.setString(4, bill);
		
		//executing the query to the database
        int p=pstmt.executeUpdate();
        System.out.println("Data is inserted sucessfully!");}
        catch(Exception  exception){
			exception.printStackTrace();
        } %>
        <jsp:forward page="royaladdrooms.jsp"/>


</body>
</html>