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
	 msg="";
 }
%>
 <form action="AdmPwdController" method="post">
<h3><%=msg %></h3>
<table align="center" border=1>
<tr>
<th colspan=2 align="center">Change Password</th>
</tr>
<tr>
<td>Old Password </td>
<td><input type="text" name="oldpassword" value=""></input></td>
</tr>
<tr>
<td>New Password</td>
<td><input type="text" name="newpassword" value=""></input></td>
</tr>

<tr>
<td>Confirm Password</td>
<td><input type="text" name="confirm" value=""></input></td>
</tr>
<tr>
<td colspan=2 align="center"><input type="submit" value="Submit"></input></td>
</tr>



</table>
</form>

</body>
</html>