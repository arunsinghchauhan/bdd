<%@page import="java.sql.*"%>
<%
	String libid = request.getParameter("libid");
	String firstName = request.getParameter("firstName");
	String middleName = request.getParameter("middleName");
	String lastName = request.getParameter("lastName");
	String dob = request.getParameter("dob");
	String doa = request.getParameter("doa");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String fatherName = request.getParameter("fatherName");
	String pin = request.getParameter("pin");
	String branch = request.getParameter("branch");

	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hiet_db", "root", "");
	//Creating statement to execute query
	String sql = "update  student_registration_tbl set firstName=?,middleName=?,lastName=?,dob=?,doa=?,email=?,phone=?,address=?,fatherName=?,pin=?,branch=? where libid=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	pstmt.setString(1, firstName);
	pstmt.setString(2, middleName);
	pstmt.setString(3, lastName);
	pstmt.setString(4, dob);
	pstmt.setString(5, doa);
	pstmt.setString(6, email);
	pstmt.setString(7, phone);
	pstmt.setString(8, address);
	pstmt.setString(9, fatherName);
	pstmt.setString(10, pin);
	pstmt.setString(11, branch);
	pstmt.setString(12, libid);
	//executing the query to the database
	int p = pstmt.executeUpdate();
%>
<jsp:forward page="showStudents.jsp" />




