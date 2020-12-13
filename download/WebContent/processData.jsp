<%@page import="java.sql.*"%>
<%
String userid =request.getParameter("userid");
String firstName =request.getParameter("firstName");
String middleName =request.getParameter("middleName");
String lastName =request.getParameter("lastName");
String dob =request.getParameter("dob");
String doa =request.getParameter("doa");
String email =request.getParameter("email");
String phone =request.getParameter("phone");
String address =request.getParameter("address");
String fatherName=request.getParameter("fatherName");
String pin=request.getParameter("pin");
String country=request.getParameter("country");
System.out.println(firstName);
//System.exit(0);
//loading the driver
try
{
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
//Creating statement to execute query
String sql="insert into login_tbl values(?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
//setting the values into the query
pstmt.setString(1,userid);
pstmt.setString(2,firstName);
pstmt.setString(3,middleName);
pstmt.setString(4,lastName);
pstmt.setString(5,dob);
pstmt.setString(6,doa);
pstmt.setString(7,email);
pstmt.setString(8,phone);
pstmt.setString(9,address);
pstmt.setString(10,fatherName);
pstmt.setString(11,pin);
pstmt.setString(12,country);

System.out.println(pstmt);
//System.exit(0);
int p=pstmt.executeUpdate();
}catch(Exception  exception){
	exception.printStackTrace();
}
%>
<jsp:forward page="login.jsp"/>