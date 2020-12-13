
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#heshe">
<% 
String num =request.getParameter("pname");
int n =Integer.parseInt(num);
int result=1;
for(int i=2;i<=n;i++){
	result=result*i;
}

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
    String sql="insert into fact_tbl values(?,?)";
    PreparedStatement pstmt=connection.prepareStatement(sql);
    pstmt.setInt(1,n);
    pstmt.setInt(2,result);
    int row=pstmt.executeUpdate();
}catch(Exception e){
e.printStackTrace();
}
    
%>
<h2>THE RESULT IS:<%=result%></h2>
</body>
</html>