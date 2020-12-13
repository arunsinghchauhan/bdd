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
    	
   	    request.removeAttribute("msg");
     
     }
     else
     {
    	 msg= "";
     }

%>



<form action="BookController" method="post">


<table align="center" border=1>





<tr>
<th  colspan=2 align="center">ADD NEW BOOKS</th>
</tr>
<tr>
<td><font color="green" align="center"><%=msg %></font></td>
</tr>

<tr>
<td> Code :</td>
<td><input type="text" name="code" value=""></input></td>
</tr>

<tr>
<td> Subject:</td>
<td><input type="text" name="subject" value=""></input></td>
</tr>

<tr>
<td> Book :</td>
<td><input type="text" name="bookname" value=""></td>
</tr>

<tr>
<td>Author :</td>
<td><input type="text" name="author" value=""></td>
</tr>


<tr>
<td>Course       :</td><td><select name="course">
<option value="">-----Please Select--------</option>
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
<td>Semester    :</td><td><select name="semester">
<option value="">-----Please Select--------</option>
<option value="1">1st</option>
<option value="2">2nd</option>
<option value="3">3rd</option>
<option value="4">4th</option>
<option value="5">5th</option>
<option value="6">6th</option>
<option value="7">7th</option>
<option value="8">8th</option>

</select></td>
</tr>

<tr>
    <td>Attach File :</td>
    <td><input type="file" name="attachfile" value="Choose" size="20"></input><br><br></td>
   
</tr>

<tr>

<td> <input type="submit" value="SUBMIT"></input></td>

</tr>



</table>
</form>
</body>
</html>