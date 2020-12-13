<%@page import="java.sql.*"%>
<%
	String roomno = request.getParameter("roomno");
	String roomtype = request.getParameter("roomtype");
	String bedtype = request.getParameter("bedtype");
	String bill = request.getParameter("bill");

	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hoteldatabase", "root", "");
	//Creating statement to execute query
	String sql = "update  totalroom_tbl set roomtype=?,bedtype=?,billperday=? where roomno=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	
	pstmt.setString(1, roomtype);
	pstmt.setString(2, bedtype);
	pstmt.setString(3, bill);
	pstmt.setString(4, roomno);

	
	//executing the query to the database
	int p = pstmt.executeUpdate();
%>
<jsp:forward page="addrooms.jsp" />




