<%-- 
    Document   : downloadAssign
    Created on : Feb 1, 2013, 2:01:18 PM
    Author     : access
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download Assignments</title>
    </head>
    <body>
        <div id="mainbody">
            <%@include file = "header_student.html" %>

            <div class="whitecontant">

                <div style="height: 370px; width: 99.50%; border: 1px solid gray">
                    <h1>&nbsp;</h1>
                                        <h1>&nbsp;</h1>

                    <form action="#" method="POST">                <center>


                            <fieldset style="width: 700px; padding: 10px; height: auto">
                                <legend>Download Assignments</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: 120px" >
<%
int i=0;
try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from uploadassign where course='"+session.getAttribute("course")+"' and sem='"+session.getAttribute("sem")+"' and branch='"+session.getAttribute("branch")+"' and year='"+session.getAttribute("year")+"'");
    while(rs.next())
        {
        i++;
        %>
        <tr>
            <td>
                <%=i%>
            </td>
            <td>
                <%=rs.getString("assign")%>
            </td>
            <td>
                <a href="Upload/<%=rs.getString("assign")%>">Download</a>
            </td>
        </tr>
        <%
        }
    }
catch(Exception ex)
    {
    
    }
%>


                                </table>


                            </fieldset>


                        </center>
                    </form><br/>

   

                </div>
            </div>
        </div>
        <%@include file = "footer.html" %>


    </body>
</html>
