<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
  String main(String name){
	StringBuilder builder=new StringBuilder(name);
	builder.reverse();
    return builder.toString();  
} 
%>

<%
  String aaname=request.getParameter("pname");
  
%>
<h2>Entered Name is  = <%=main(aaname)%></h2>
</body>
</html>