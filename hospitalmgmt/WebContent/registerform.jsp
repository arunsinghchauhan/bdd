<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form for registered</title>
</head>
<body>
<form	action="userconnectivity.jsp"
										method="post">
<table width="54" border="1"
											style="border: 2px solid; border-radius: 10px;">
					
												
	<tr>
	<td align="center">Userid:</td>
	<td align="center"><input type="text" name="userid" size="30"
	maxlength="12" /></td>
	</tr>
	<tr>
	<td align="center">Password:</td>
	<td align="center"><input type="password" name="password" size="30"
	maxlength="12" /></td>
	</tr>
	
	</table>
	<img align="right" src="${pageContext.request.contextPath}/images/user.jpg"/>
	<input align="right" type="Submit" value="submit" size="30"/>
	
	
</form>
</body>
</html>