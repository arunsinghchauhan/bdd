<%@page import="com.student.ragisteration.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><font color="green">Ragisteration Successful</font> </h1>


<%

StudentBean bean=(StudentBean)request.getAttribute("bean");
int regid=bean.getRegid();
String password=bean.getPassword();

%>

<table align="center" border=1>


<tr>
<td>RegiId</td>
<td><%=regid %></td>
</tr>
<tr>
<td>Password</td>
<td><%=password %></td>
</tr>


</table>
<a href="AdminSuccessLogin.jsp">>Click here to go back to Home</a>
</body>
</html>