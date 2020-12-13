<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show students</title>
</head>
<body>
<form action="ListController" method="post">
<table align="center" bordercolor="red" border=1>
<tr>
<th align="center" colspan=2>List of Students</th>
</tr>
<tr>

<tr>
<td>Course  :</td>
<td><select name="choice">
<option value="">--Please Select---</option>
<option value="bca">BCA</option>
<option value="mca">MCA</option>
<option value="b.tech">B.Tech</option>
<option value="m.tech">M.Tech</option>
<option value="bba">BBA</option>
<option value="mba">MBA</option>
<option value=other>Other</option>
</select></td>
</tr>


<tr>
<td colspan=2 align="center">
<input type="submit" value="View">
</td>
</tr>

</table>
</form>
</body>
</html>