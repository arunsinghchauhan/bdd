<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="BController" method="post">
<table align="center">

<tr >
<th align="center">Search Book</th>
</tr>

 
<tr>
<td>Search By :</td>
<td><select name="choice">
<option value="">-----Please Select--------</option>
<option value="semester">Semester</option>
<option value="course">Course</option>
<option value="subject">Subject</option>
<option value="bookname">Book Name</option>

</select></td>
</tr>

<tr>
<td>Value :</td>
<td><input type="text" name="svalue" value=""></input></td>
</tr>

<tr>
<td><input type="submit" value="SEARCH">
</tr>



</table>
</form>
</body>
</html>