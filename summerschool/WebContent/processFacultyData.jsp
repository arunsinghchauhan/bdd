<%@page import="java.sql.*"%>
<%
String facultyId=request.getParameter("facultyId");
String firstName=request.getParameter("firstName");
String middleName=request.getParameter("middleName");
String lastName=request.getParameter("lastName");
String dob=request.getParameter("dob");
String doj=request.getParameter("doj");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String designation=request.getParameter("designation");
String pin=request.getParameter("pin");
String department=request.getParameter("department");
String experience=request.getParameter("experience");
String hdegree=request.getParameter("hdegree");
//loading the driver
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
//Creating statement to execute query
String sql="insert into faculty_registration_tbl values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
//setting the values into the query
pstmt.setString(1, facultyId);
pstmt.setString(2,firstName);
pstmt.setString(3, middleName);
pstmt.setString(4, lastName);
pstmt.setString(5, dob);
pstmt.setString(6, doj);
pstmt.setString(7,email);
pstmt.setString(8,phone);
pstmt.setString(9,address);
pstmt.setString(10,designation);
pstmt.setString(11,pin);
pstmt.setString(12,department);
pstmt.setString(13,hdegree);
pstmt.setString(14,experience);
//executing the query to the database
int p=pstmt.executeUpdate();
%>
<jsp:forward page="addFaculty.jsp"/>




