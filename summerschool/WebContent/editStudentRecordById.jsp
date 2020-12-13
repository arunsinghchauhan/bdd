<%@page import="com.model.StudentData"%>
<%@page import="java.sql.*"%>
<%
	String libid = request.getParameter("libid");
	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hiet_db", "root", "");
	//Creating statement to execute query
	String sql = "select * from student_registration_tbl where libid=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	pstmt.setString(1, libid);
	//executing the query to the database
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		StudentData data = new StudentData(rs.getString(1),
				rs.getString(2), rs.getString(3), rs.getString(4),
				rs.getString(5), rs.getString(6), rs.getString(7),
				rs.getString(8), rs.getString(9), rs.getString(10),
				rs.getString(11), rs.getString(12));
		request.setAttribute("stuData",data);
	}
%>

<jsp:forward page="editStudent.jsp" />