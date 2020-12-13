<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
     String msg="";
     if(request.getAttribute("msg")!=null)
     {
    	 msg=request.getAttribute("msg").toString();
     }
     else
     {
    	  msg ="";
     }

%>
<h3><%=msg %></h3>
<form action="DeleteController" method="post">
<table align="center" bordercolor="red" border=1>
<tr>
<th colspan=2 align="center">Delete User</th>
</tr>
<tr>
<td>Delete By RegId :</td>
<td><input type="text" name="regid"></td>
</tr>

<tr>
<td colspan=2 align="center"><input type="submit" value="delete"></input></td>
</tr>
</table>
</form>
</body>
</html>