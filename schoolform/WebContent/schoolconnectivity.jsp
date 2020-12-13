<%@page import="java.sql.*"%>
<%
String studentId =request.getParameter("studentId");
String participantName=request.getParameter("participantName");
String fatherName=request.getParameter("fatherName");
String dob=request.getParameter("dob");
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String instituteName=request.getParameter("instituteName");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String reason=request.getParameter("reason");

try
{
//loading the driver
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
//Creating statement to execute query
String sql="insert into school_registration_tbl values(?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
//setting the values into the query
pstmt.setString(1,studentId);
pstmt.setString(2,participantName);
pstmt.setString(3,fatherName);
pstmt.setString(4,dob);
pstmt.setString(5,course);
pstmt.setString(6,branch);
pstmt.setString(7,year);
pstmt.setString(8,instituteName);
pstmt.setString(9,email);
pstmt.setString(10,phone);
pstmt.setString(11,address);
pstmt.setString(12,reason);

int p=pstmt.executeUpdate();
}catch(Exception  exception){
	exception.printStackTrace();
}
%>
<jsp:forward page="schoolregistrationform.jsp"/>




