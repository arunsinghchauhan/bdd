<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" >
<title>Insert title here</title>
</head>
<body>
<% 
Connection con=null;
Statement st=null;
%>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ankur");
			PreparedStatement pst=null;
			String sql="insert into USERNAME values(?,?,?,?,?,?,?,?,?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1,request.getParameter("fname"));
		
			pst.setString(2,request.getParameter("lname"));
			pst.setString(3,request.getParameter("uname"));
			pst.setString(4,request.getParameter("email"));
			pst.setString(5,request.getParameter("upass"));
			pst.setString(6,request.getParameter("dob"));
			pst.setInt(7,Integer.parseInt(request.getParameter("age")));
			pst.setString(8,request.getParameter("addr"));
			pst.setString(9,request.getParameter("con"));
			pst.setString(10,request.getParameter("state"));
			pst.setString(11,request.getParameter("cont"));
			pst.setDouble(12, 50000);
			
			
			
			
			int x=pst.executeUpdate();
			if(x>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
				rd.forward(request, response);
			}
			
		
}catch(SQLException ex){
	request.setAttribute("error", "User Name Already Taken");
	RequestDispatcher rs=request.getRequestDispatcher("Register.jsp");
	rs.forward(request, response);
}

catch(Exception e){
	out.println(e);
}
%>
</body>
</html>