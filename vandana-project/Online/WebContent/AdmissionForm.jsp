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
     }
     else
     {
    	  msg ="";
     }

%>

<form action="StudentController" method="post">
 <table align="center" border=1>
 <tr>
 <th colspan=2>Admission Form</th>
 </tr>
 
 <tr>
   <td align="center"><font color="green"><%=msg %></font></td>
 </tr>
 
 
 <tr>
 <td>First Name :</td>
 <td><input type="text" name="firstname" value="">
 </tr>
 <tr>
 <td>Last Name :</td>
 <td><input type="text" name="lastname" value="">
 </tr>
 <tr>
 <td>Fathers Name :</td>
 <td><input type="text" name="fathersname" value="">
 </tr>
 <tr>
 <td>Email Id:</td>
 <td><input type="text" name="email" value="">
 </tr>
 <tr>
 <td>Contact No :</td>
 <td><input type="text" name="contact" value="">
 </tr>
 
  <tr>
 <td>Batch :</td>
 <td><input type="text" name="batch" value="">
 </tr>
 
 <tr>
 <td>Course :</td>
 <td><select name="course">
 <option value="">---Please select-------</option>
 <option value="bca">BCA</option>
 <option value="mca">MCA</option>
 <option value="b.tech">B.Tech</option>
<option value="m.tech">M.Tech</option>
<option value="bba">BBA</option>
<option value="mba">MBA</option>
<option value=other>Other</option>
</select>
 </tr>
 
 <tr>
<td>Gender  :</td>
<td><input type="radio" name="gender" value="male">Male<input type="radio" name="gender" value="">Female</td>
</tr>


 <tr>
<td>Date of Birth :</td>
<td><input type="text" name="dob" value=""></td>
</tr>
 
 
<tr>
<td>Address :</td>
<td><input type="text" name="address" value=""></td>
</tr>

<tr>
<td>City :</td><td><select name="city">
<option value="haryana">--Please Select--</option>
<option value="nagpur">Nagpur</option>
<option value="pathankot">Pathankot</option>
<option value="jalandhar">Jalandhar</option>
<option value="chandigarh">Chandigarh</option>
</select></td>
</tr>

<tr>
<td>State :</td><td><select name="state">
<option value="">--Please Select--</option>
<option value="punjab">Punjab</option>
<option value="himachal">Himachal</option>
<option value="gujrat">Gujrat</option>
<option value="haryana">Haryana</option>
<option value="delhi">Delhi</option>
</select></td>
</tr>

 
 <tr>
 <td>Qualification :</td>
 <td><select name="qualification">
 <option value="">---Please Select------</option>
 <option value="10th">10th</option>
 <option value="12th">12th</option>
 <option value="graduate">Graduate</option>
 </select>
 </tr>

 
 <tr align="center">
<td colspan="2"><input type="submit" value="SUBMIT"></td>
</tr>
 
</table>

<a href="AdminSuccessLogin.jsp">>Click here to go Back</a>
</form>
</body>
</html>