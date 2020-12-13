<%@page import="java.sql.*"%>
<%
	String email = request.getParameter("email");
	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hoteldatabase", "root", "");
	//Creating statement to execute query
	String sql = "delete from cab1_tbl where email=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	pstmt.setString(1,email);
	//executing the query to the database
	int p = pstmt.executeUpdate();
%>

<jsp:forward page="deletecab.jsp"/>