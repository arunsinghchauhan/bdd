<%-- 
    Document   : projects
    Created on : May 28, 2013, 5:05:25 PM
    Author     : ashish
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                          <%

        Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ankur");
  Statement st=con.createStatement();
             
                ResultSet rs=st.executeQuery("select * from PRODUCT_LIST");

       // String path=application.getRealPath("ppt+")+"\\"+ss;
String s1=null, name=null, artist=null, des=null, cat=null, dorec=null;
double price=0, id=0, qua=0;

while(rs.next())
       {
                    
   id=rs.getInt(1);
s1=rs.getString(8);
des=rs.getString(3);
name=rs.getString(2);
cat=rs.getString(6);
dorec=rs.getString(7);
qua=rs.getInt(5);
price=rs.getDouble(4);
               
%><div>
                  <div> <img src="image.jsp?val=<%=s1%>" alt="" width="210" height="139" class="project-img" /> <br />
                    <br />
                    <br />                    
       <br/>
       <h2><%= name%></h2>
       <br/>       
     
       <br/>
       <%= des %>
       <br/>
       <h1 style="color: red">
           Price: Rs.<%= price%></h1>
                    <div class="clear"></div>
                  </div>
                  <br />
                  
                </div>
                
                    <%

                }


%>
    </body>
</html>
