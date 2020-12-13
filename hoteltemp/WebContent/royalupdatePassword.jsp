<%@page import="java.sql.*"%>
<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String accountType = request.getParameter("accountType");
	
	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hoteldatabase", "root", "");
	//Creating statement to execute query
	String sql = "update  royallogin_tbl set userid=?,acounttype=? where password=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	
	pstmt.setString(1, userId);
	pstmt.setString(2, accountType);
	pstmt.setString(3, password);

	
	//executing the query to the database
	int p = pstmt.executeUpdate();
%>
<jsp:forward page="royalpassworddetail.jsp" />




