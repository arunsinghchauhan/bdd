<%@ page session="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("uname");
//

String pass=request.getParameter("upass");
//
try
{
	Connection con=null;

Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ankur");

Statement st=con.createStatement();
String sql="select * from USERNAME where USERNAME='"+name+"' AND PASSWORD='"+pass+"'";
ResultSet rs=st.executeQuery(sql);

if(rs.next())
{
	HttpSession s=request.getSession();
	s.setAttribute("username", name);
	s.setAttribute("password", pass);
	RequestDispatcher rd=request.getRequestDispatcher("afterLogin.jsp");
	rd.forward(request, response);
	%>
	
	
	<%
	
}
else
{
	%>
	<jsp:forward page="error.jsp"></jsp:forward>
	<%
}
}catch(Exception e)
{
	e.printStackTrace();
	out.println(e);
}
%>
</body>
</html>