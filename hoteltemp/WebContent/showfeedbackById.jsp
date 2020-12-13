<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%


 String feedback=request.getParameter("feedback");
//loading the driver
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
//Creating statement to execute query
String sql="select image  from feedback_tbl";
PreparedStatement pstmt=connection.prepareStatement(sql);
pstmt.setString(1,feedback);
//executing the query to the database
ResultSet rs=pstmt.executeQuery(); 


%>