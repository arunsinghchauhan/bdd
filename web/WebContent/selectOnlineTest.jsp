<%-- 
    Document   : selectOnlineTest
    Created on : Feb 1, 2013, 1:43:33 PM
    Author     : access
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selection Page</title>
    </head>
    <body>
                <div id="mainbody">
            <%@include file = "header_student.html" %>
          <div class="whitecontant">

                <div style="height: 300px; width: 99.50%; border: 1px solid gray">


                     <form action="SubjectAuth" method="POST">                <center>


                            <fieldset style="border-radius:10px; background:rgba(67, 148, 217, 0.1); width: 300px; padding: 10px; height: auto">
                                <legend>Selection Page</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: 120px" >
                                    <tr>

                <td>Subject</td>
                <td>:</td>
    <td>
        <select name="txtSubject">
            <option>Select Subject</option>
<%
session.setAttribute("id","0");
session.setAttribute("correct","0");
try
{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery("select * from subject where course='"+session.getAttribute("course")+"' and sem='"+session.getAttribute("sem")+"' and branch='"+session.getAttribute("branch")+"' and year='"+session.getAttribute("year")+"'");
while(rs.next())
    {
    %>

            <option><%=rs.getString("sub")%></option>

    <%
    }
}
catch(Exception ex)
        {
    out.println(ex.getMessage());
    }
%>

</select>
    </td>
            </tr>
                    

                    <tr></tr><tr></tr><tr></tr>
                    <tr>
                <td colspan="3">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="button" type="submit" value="Continue" />
                </td>
            </tr>

                                </table>


                            </fieldset>


                        </center>
                    </form>
                </div>




            </div>
        </div>
        <%@include file = "footer.html" %>


    </body>
</html>
