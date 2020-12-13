<%@page import="java.sql.*"%>
<%
	String facultyId = request.getParameter("facultyId");
	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hiet_db", "root", "");
	//Creating statement to execute query
	String sql = "delete from faculty_registration_tbl where facultyid=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	pstmt.setString(1, facultyId);
	//executing the query to the database
	int p = pstmt.executeUpdate();
%>

<jsp:forward page="showFaculty.jsp"/>