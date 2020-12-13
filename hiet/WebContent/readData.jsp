<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#ababab">

<!--  scriptlet tag -->
 <%
     String fname=request.getParameter("fname");
     String email=request.getParameter("email");
    
   //loading the driver
   try{
		Class.forName("com.mysql.jdbc.Driver");
		//Connection points to the database
		Connection connection=DriverManager.
				getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
		//Creating statement to execute query
		String sql="insert into information_tbl values(?,?)";
		PreparedStatement pstmt=connection.prepareStatement(sql);
     //setting the values into the query
		pstmt.setString(1, fname);
        pstmt.setString(2,email);
		//executing the query to the database
        int p=pstmt.executeUpdate();
        System.out.println("Data is inserted sucessfully!");}
        catch(Exception  exception){
			exception.printStackTrace();
        }
        
    
 %>

   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    <p></p>
    Name is=:<%= fname %>
    <p></p>
        Email is=:<%=email %>
    

</body>
</html>