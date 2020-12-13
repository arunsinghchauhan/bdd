<%@page import="java.sql.*"%>
<%
	String password = request.getParameter("password");
	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hoteldatabase", "root", "");
	//Creating statement to execute query
	String sql = "delete from royallogin_tbl where password=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	pstmt.setString(1,password);
	//executing the query to the database
	int p = pstmt.executeUpdate();
%>

<jsp:forward page="royalpassworddetail.jsp"/>