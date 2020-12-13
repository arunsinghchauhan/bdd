<%-- 
    Document   : viewNotice
    Created on : Feb 1, 2013, 6:16:03 PM
    Author     : access
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice Page</title>
    </head>
    <body>
                <div id="mainbody">
            <%@include file = "header_student.jsp" %>

            <div class="whitecontant">

                <div style="height: auto; width: auto; border: 1px solid gray">
                    <h1>&nbsp;</h1>
                                        <h1>&nbsp;</h1>

                    <form action="#" method="POST">                <center>


                            <fieldset style="width: auto; padding: 10px; height: auto">
                                <legend>Notice</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: 120px" >
<%
int i=0;
try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from notice where touser='"+session.getAttribute("uname")+"'");
    while(rs.next())
        {
        i++;
        %>
        <tr>
            <td>
                <%=i%>.
            </td>
            <td>
                <%=rs.getString("content")%>
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
        <%@include file = "footer.jsp" %>



    </body>
</html>
