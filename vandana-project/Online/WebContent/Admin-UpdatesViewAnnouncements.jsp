<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="com.database.Dao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table width=250 align="left" border=1>
<tr><th>NEWS</th></tr>

<%
  Connection connection=Dao.getConnect();
  String selectQuery="select * from updates";
  try
  {
	PreparedStatement prepare=connection.prepareStatement(selectQuery);
	ResultSet resultset=prepare.executeQuery();
	
%>	
    <tr><td>
	<marquee direction="up"  onmouseover="stop();" onmouseout="start();">
	<table>
	
<% 	
	while(resultset.next())
	{
%>	
     
    <tr><td>
              <hr width=200>
      <font color="red"> <%=resultset.getString(2) %></font><br>
              <hr width=200>
  
                         <%=resultset.getString(1) %><br>
              <hr width=200>
  
                       <%=resultset.getString(3) %></a>  
    </td></tr>
    
<% 	
   }
%>	
                </table>
				</marquee>				
				</td></tr>

<% 
  }
  catch(Exception e)
  {
	  e.printStackTrace();
  }
%>


</table>
</body>
</html>