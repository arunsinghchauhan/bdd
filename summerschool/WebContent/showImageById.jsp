<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%


 String libid=request.getParameter("libid");
//loading the driver
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
//Creating statement to execute query
String sql="select image  from student_registration_tbl where libid=?";
PreparedStatement pstmt=connection.prepareStatement(sql);
pstmt.setString(1,libid);
//executing the query to the database
ResultSet rs=pstmt.executeQuery(); 
if(rs.next()){
	InputStream inputStream=rs.getBinaryStream(1);
	byte[] bytes = IOUtils.toByteArray(inputStream);
	response.setContentType("image/jpg");
	response.getOutputStream().write(bytes);
	response.getOutputStream().flush();
	response.getOutputStream().close();
}









%>