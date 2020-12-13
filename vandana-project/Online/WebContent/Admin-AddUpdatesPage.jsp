<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
        




<form action="AnnouncementsController" method="post">
<table align="center">
<tr>
    <th  colspan=2 align="center">Update New Information<br><br></th>
</tr>
<tr>
    <td>News :</td>
    <td><textarea rows="5" cols="40" name="news" ></textarea></td>
   
</tr>

<tr>
    <td>Event Date :</td>
    <td><input type="text" name="eventdate" value="" size="50"></input><br><br></td>
   
</tr>

<tr>
    <td>Attach File :</td>
    <td><input type="file" name="file" value="" size="50"></input><br><br></td>
   
</tr>

<tr>
     <td align="right"><input type="submit" value="Upload"></input></td>

</tr>


</table>
</form>
</body>
</html>