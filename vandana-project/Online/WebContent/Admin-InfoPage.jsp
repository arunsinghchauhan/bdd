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
    	  msg =request.getAttribute("msg").toString();
    	  request.removeAttribute("msg");
      }
      else
      {
    	  msg="";
      }
   %>
<form action="AdminDetails" method="post">

<table align="center" border=1 >
<tr>
<th align="center" colspan="2">Administrator Details</th>
</tr>

<tr>
    <td colspan=2><font color="red"> <%=msg %> </font></td>
</tr>

<tr>
<td>UserName :</td>
<td><input type="text" name="username" value=""></input></td>
</tr>

<tr>
<td>Password :</td>
<td><input type="password" name="password" value=""></input></td>
</tr>

<tr>
<td>First Name :</td>
<td><input type="text" name="firstname" value=""></td>
</tr>

<tr>
<td>Last Name :</td>
<td><input type="text" name="lastname" value=""></td>
</tr>
<tr>
<td>DOB :</td>
<td><jsp:include page="calendar.html"></jsp:include></td>
</tr>



<tr>
<td> Address:</td>
<td><input type="text" name="address" value=""></td>
</tr>
<tr>
<td>Email Id:</td>
<td><input type="text" name="email" value=""></td>
</tr>
<tr>
<td>Contact No :</td>
<td><input type="text" name="contact" value=""></td>
</tr>


<tr align="center">
<td colspan="2"><input type="submit" value="SUBMIT"></td>
</tr>


</table>
</form>

</body>
</html>