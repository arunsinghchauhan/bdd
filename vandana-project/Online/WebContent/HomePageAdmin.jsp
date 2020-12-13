<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Admin-UpdatesViewAnnouncements.jsp"></jsp:include>

  <%
      String msg="";
      if(request.getAttribute("msg")!=null)
      {
    	  msg =request.getAttribute("msg").toString();
    	  request.removeAttribute("msg");
      }
      else
      {
    	  msg="";
      }
  %>
                
<form action="LoginController" method="post">

<table align="center">

      
<tr>
    <td colspan=2><font color="red"> <%=msg %> </font></td>
</tr>
<tr>
<th align="center">Home Page</th>
</tr>

<tr>
<td>UserName :</td>
<td><input type="text" name="username" value=""></td>
</tr>

<tr>
<td>Password :</td>
<td><input type="password" name="password" value=""></td>
</tr>

<tr>
<td>UserType :</td>
<td><select name="type">
<option value="">--Select Type---</option>
<option value="admin">Administrator</option>
<option value="student">Student</option>
</select></td>
</tr>

<tr>
<td><input type="submit"  value="Login"></td>
<td><input type="submit"  value="Reset"></td>
</tr>


</table>
</form>
</body>
</html>