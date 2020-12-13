<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.database.Dao"%><html>
<%@page import="java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AnnouncementsController"  method="post">
<%
   Connection connection=Dao.getConnect();
   String selectQuery="select * from updates ";
   try
   {
 	PreparedStatement prepare=connection.prepareStatement(selectQuery);
 	ResultSet resultset=prepare.executeQuery();
 	
 	while(resultset.next())
 	{
 %>
     <table  border=1>
  
     <tr>
     <td>
     <input type="checkbox" name="choice" value="<%=resultset.getInt(1)%>"><input type="text" name="eventdate" value="<%=resultset.getString(2) %>"></input>
                                                 <input type="text" name="news" value="<%=resultset.getString(3) %>"></input>
                                                 <input type="text" name="file" value="<%=resultset.getString(4) %>"></input><br></td></tr> </table> 
                                                 
                                                 
                                                                                        
 <%	
 	}
 %>
    <input type="submit" value="delete"></input>
    
   
   
 
  <%
   }
   catch(Exception e)
   {
	   e.printStackTrace();
   }
  %> 
</form>
</body>
</html>