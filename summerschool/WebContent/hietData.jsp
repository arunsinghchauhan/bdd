<%@page import="java.sql.*"%>
<%
String studentid=request.getParameter("studentid");
String participantName=request.getParameter("participantName");
String fatherName=request.getParameter("fatherName");
String dob=request.getParameter("dob");
System.out.println(" dob  = "+dob);
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String institutename=request.getParameter("institutename");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String email=request.getParameter("email");
String join=request.getParameter("join");
try
{
//loading the driver
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
//Creating statement to execute query
String sql="insert into hiet_registration_tbl values(?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
//setting the values into the query
pstmt.setString(1, studentid);
pstmt.setString(2,participantName);
pstmt.setString(3, fatherName);
pstmt.setString(4, dob);
pstmt.setString(5, course);
pstmt.setString(6,branch);
pstmt.setString(7,year);
pstmt.setString(8,institutename);
pstmt.setString(9,address);
pstmt.setString(10,contact);
pstmt.setString(11,email);
pstmt.setString(12,join);
//executing the query to the database
int p=pstmt.executeUpdate();
} catch (Exception exception) {
	exception.printStackTrace();

}
%>
<jsp:forward page="hietStudentForm.jsp"/>




