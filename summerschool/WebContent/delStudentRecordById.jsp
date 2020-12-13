<%@page import="java.sql.*"%>
<%
	String libid = request.getParameter("libid");
	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hiet_db", "root", "");
	//Creating statement to execute query
	String sql = "delete from student_registration_tbl where libid=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	pstmt.setString(1, libid);
	//executing the query to the database
	int p = pstmt.executeUpdate();
%>

<jsp:forward page="showStudents.jsp"/>