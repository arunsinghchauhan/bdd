<%@page import="com.student.ragisteration.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Profile</title>
</head>
<body>
<jsp:include page="Logout.jsp"></jsp:include>

<%
 String msg="";
try
{
	if(request.getAttribute("msg")!=null)
	{
		msg=request.getAttribute("msg").toString();
		request.removeAttribute("msg");
	}
	else
	{
		msg="";
	}
}

catch(Exception exception)
{
	exception.printStackTrace();
}

%>
<h2><%=msg %></h2>


<%
   StudentBean bean=new StudentBean();
   bean=(StudentBean)session.getAttribute("bean");
   

%>

<form action="Controller" method="post">
<table bordercolor="red" border=1 align="center">
<tr>
<th align="center" colspan=2>Student Profile View</th>
</tr>

<tr>
<td>Reg Id :</td>
<td><input type="text" name="regid" disabled="disabled" value="<%=bean.getRegid()%>"></td>
</tr>

<tr>
<td>First Name :</td>
<td><input type="text" disabled="disabled" name="firstname" value="<%=bean.getFirstname()%>"></td>
</tr>
<tr>
<td>Last Name :</td>
<td><input type="text" disabled="disabled" name="lastname" value="<%=bean.getLastname()%>"></td>
</tr>

<tr>
<td>Fathers Name :</td>
<td><input type="text" name="fathersname" value="<%=bean.getFathersname()%>"></td>
</tr>

<tr>
<td>Email :</td>
<td><input type="text" name="email" value="<%=bean.getEmail()%>"></td>
</tr>

<tr>
<td>Contact :</td>
<td><input type="text" name="contact" value="<%=bean.getContact()%>"></td>
</tr>

<tr>
<td>Course :</td><td><select name="course" disabled="disabled">
<option value="<%=bean.getCourse()%>"><%=bean.getCourse()%></option>
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
<td>Qualification :</td><td><select name=qualification disabled="disabled">
<option value="<%=bean.getQualification()%>"> <%=bean.getQualification()%> </option>
<option value="10th">10th</option>
<option value="12th">12th</option>
<option value="graduate">Graduate</option>
</select></td>
</tr>


<tr>
<td>Gender :</td>
<td>
<%
if(bean.getGender().equalsIgnoreCase("male"))
{

%>
 <input type="radio" name="gender" disabled="disabled" checked="checked" value="male">Male
 <input type="radio" name="gender" disabled="disabled" value="female">Female
 <%
}
else if(bean.getGender().equalsIgnoreCase("female"))
{
%>
 <input type="radio" name="gender" disabled="disabled"  value="male">Male
 <input type="radio" name="gender" disabled="disabled" checked="checked"   value="female">Female
 <%
}
 
 %>
 </td>
</tr>

<tr>
<td> Batch:</td>
<td><input type="text" name="address" disabled="disabled" value="<%=bean.getBatch()%>"></td>
</tr>
<tr>
<td>Address:</td>
<td><input type="text" name="address" value="<%= bean.getAddress()%>"></input></td>
</tr>

<tr>
<td>City :</td><td><select name="city"  >
<option value="<%=bean.getCity()%>"><%=bean.getCity() %></option>
<option value="chandigarh">Chandigarh</option>
<option value="ludhiana">Ludhiana</option>
<option value="jalandhar">Jalandhar</option>
<option value="kapurthala">Kapurthala</option>
<option value="hoshiarpur">Hoshiarpur</option>
</select></td>
</tr>

<tr>
<td>State :</td><td><select name="state">
<option value="<%=bean.getState()%>"><%=bean.getState() %></option>
<option value="punjab">Punjab</option>
<option value="himachal">Himachal</option>
<option value="gujrat">Gujrat</option>
<option value="haryana">Haryana</option>
<option value="delhi">Delhi</option>
</select></td>
</tr>

<tr>
<td>Date of Birth :</td>
<td><input type="text" name="dob"  disabled="disabled"  value="<%=bean.getDob()%>"></td>
</tr>

<tr>
<td>Security Question :</td><td><select name="securityquestion" >
<option value="<%=bean.getSecurityquestion()%>"><%=bean.getSecurityquestion() %></option>
<option value="food">What is your favourite food?</option>
<option value="pet">Which pet you like most?</option>
<option value="nickname">What is your Nick Name ?</option>
<option value="colour">Which colour you like most?</option>
</select></td>
</tr>
<tr>
<td>Answer:</td>
<td><input type="text" name="answer" value="<%=bean.getAnswer() %>"></td>
</tr>

<tr align="center">
<td colspan="2"><input type="submit" value="SUBMIT"></td>
</tr>



</table>
</form>
</body>
</html>