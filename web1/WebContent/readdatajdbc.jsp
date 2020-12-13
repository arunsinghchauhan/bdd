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
     String fname=request.getParameter("fname");
     String rollno=request.getParameter("rollno");
     String email=request.getParameter("email");
     String mobile=request.getParameter("mobile");
     String pan=request.getParameter("pan");
     String branch=request.getParameter("branch");
     String college=request.getParameter("college");
    
   //loading the driver
   try{
		Class.forName("com.mysql.jdbc.Driver");
		//Connection points to the database
		Connection connection=DriverManager.
				getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
		//Creating statement to execute query
		String sql="insert into studentinfo_tbl values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt=connection.prepareStatement(sql);
     //setting the values into the query
		pstmt.setString(1, fname);
		pstmt.setString(2, rollno);
        pstmt.setString(3,email);
		pstmt.setString(4, mobile);
		pstmt.setString(5, pan);
		pstmt.setString(6, branch);
		pstmt.setString(7, college);
		//executing the query to the database
        int p=pstmt.executeUpdate();
        System.out.println("Data is inserted sucessfully!");}
        catch(Exception  exception){
			exception.printStackTrace();
        } %>

        MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
         <p></p>
         Name is=:<%= fname %>
         <p></p>
             Roll no. is=:<%=rollno %>
              

    <p></p>
    Email is=:<%= email %>
    <p></p>
        Mobile is=:<%=mobile %>
         

   
    <p></p>
   Pan no is=:<%= pan %>
    <p></p>
        Branch is=:<%=branch %>
         <p></p>
   College no is=:<%= college %>

</body>
</html>