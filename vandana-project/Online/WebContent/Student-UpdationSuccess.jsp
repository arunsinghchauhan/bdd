<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.bean.Student"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   Student student=(Student)request.getAttribute("student");

   String id=student.getId();
   String firstname=student.getFirstname();
   String lastname=student.getLastname();
  
   String course=student.getCourse();
   String address=student.getAddress();
   String gender=student.getGender();
  
   String email=student.getEmail();
   Long contact=student.getContact();
   
 
%>

<table>
<tr>
<td>Id :</td>
<td><%=id %></td>
</tr>

<tr>
<td>FirstName :</td>
<td><%=firstname %></td>
</tr>

<tr>
<td>LastName  :</td>
<td><%=lastname %></td>
</tr>

<tr>
<td>Course :</td>
<td><%=course %></td>
</tr>

<tr>
<td>Address :</td>
<td><%=address %></td>
</tr>


<tr>
<td>Gender :</td>
<td><%=gender %></td>
</tr>

<tr>
<td>Email : </td>
<td><%=email %></td>
</tr>

<tr>
<td>Contact :</td>
<td><%=contact %></td>
</tr>




</table>
</body>
</html>