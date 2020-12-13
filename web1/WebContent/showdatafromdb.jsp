<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SHOWING DATA FROM D/B</title>
</head>
<body bgcolor="red" >
<%
   //loading the driver
		Class.forName("com.mysql.jdbc.Driver");
		//Connection points to the database
		Connection connection=DriverManager.
				getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
		//Creating statement to execute query
		String sql="select *  from studentinfo_tbl";
		PreparedStatement pstmt=connection.prepareStatement(sql);
		//executing the query to the database
        ResultSet rs=pstmt.executeQuery();

 %>
     <table border="1" bgcolor="#ffaaaa" align="center">
       
       <%  
        while(rs.next()) {
        %>
        	<tr>
           <td>Name: </td><td><%=rs.getString(1) %></td>
        </tr>
        
           <tr>
          <td>Rollno: </td><td><%=rs.getString(2) %></td>
        </tr>
        <tr>
           <td>Email: </td><td><%=rs.getString(3) %></td>
        </tr>
        <tr>
           <td>Mobile: </td><td><%=rs.getString(4) %></td>
        </tr>
        <tr>
           <td>Pan: </td><td><%=rs.getString(5) %></td>
        </tr>
        <tr>
           <td>Branch: </td><td><%=rs.getString(6) %></td>
        </tr>
        <tr>
           <td>College: </td><td><%=rs.getString(7) %></td>
        </tr>
        <%
        }%>wwwwwwwwwwwwwwwwwwwwwwwwwww
        </table>

</body>
</html>