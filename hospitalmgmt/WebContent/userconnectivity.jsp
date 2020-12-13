<%@page import="java.sql.*"%>
<%
String userid =request.getParameter("userid");
String password=request.getParameter("password");
//loading the driver
try
{
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
//Creating statement to execute query
String sql="insert into userform_tbl values(?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
//setting the values into the query
pstmt.setString(1,userid);
pstmt.setString(2,password);

int p=pstmt.executeUpdate();
}catch(Exception  exception){
	exception.printStackTrace();
}
%>
<jsp:forward page="registerform.jsp"/>