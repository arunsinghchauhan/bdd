<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DateSheet</title>
</head>
<body>
<form action="DateSheetController" method="post">
<table align="center" bordercolor="red" border=1>
<tr>
<th align="center" colspan=2>Add Datesheet</th>
</tr>

<tr>
<td> Semester Value :</td>
<td><input type="text" name="svalue" value=""></input></td>
</tr>

<tr>
<td align="center" colspan=2><input type="submit" value="Add">
</tr>


</table>
</form>
</body>
</html>