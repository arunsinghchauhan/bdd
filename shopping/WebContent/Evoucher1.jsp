<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
Connection con=null;
Statement st=null;



	String s=request.getParameter("rname");
	String s1=(String)session.getAttribute("username");
	String s2=request.getParameter("amount");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ankur");
			PreparedStatement pst=null;
			String sql="insert into GIFT values(?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1,s1);
			pst.setString(2,s);
			pst.setInt(3,Integer.parseInt(s2));
			int x=pst.executeUpdate();
			if(x>0)
			{	
				request.setAttribute("msg", "Gift Voucher send Successfully!!!!");
				RequestDispatcher rd=request.getRequestDispatcher("Evoucher.jsp");
				rd.forward(request, response);
			}
			
			%>
</body>
</html>