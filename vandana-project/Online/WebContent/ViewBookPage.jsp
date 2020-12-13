<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
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
int count=0;
  ArrayList<Object> list = (ArrayList<Object>)request.getAttribute("list");
  
  if(list.size()>0)
  {
	  Iterator<Object> itr=list.iterator();

%>
    <table align="center" bordercolor="red" border="2" width="600">
   <%
      while(itr.hasNext())
      {
    	  
    %>
   
    
    <tr>
							<td><%=itr.next()%>
							<td><%=itr.next() %></td>
							
							<%
							
							String name=(String)itr.next();
							String path="G:\\Ebooks\\"+name;
							
							%>
				          
				            <td><%=name%></td>
				            <td><%=itr.next() %></td>
				            <td><%=itr.next() %></td>
				            <td><%=itr.next() %></td>
				            <td><%=itr.next() %></td>
				             <%
    if(count>0)
    {
    	%>
				            
				            <td><a href="<%=path%>">View</a></td>
				            <td><a href="">Download</a></td>
				            <%
				            
    }
				            %>
		</tr>
		
	<%
	count++;
      }
	%>		            
				            
     </table>
     
 <%
 }
  else
  {
 %>
       <h4>Data Not Found...... Try Again</h4>
       
 <%

	}

%>
  



</body>
</html>