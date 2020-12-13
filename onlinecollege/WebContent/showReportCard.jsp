<%-- 
    Document   : showReportCard
    Created on : Feb 1, 2013, 4:36:11 PM
    Author     : access
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Report Card</title>
    </head>
    <body>
        <div id="mainbody">
            <%@include file = "header_student.jsp" %>

            <div class="whitecontant">

                <div style="height: 370px; width: 99.50%; border: 1px solid gray">
                    <h1>&nbsp;</h1>
                                        <h1>&nbsp;</h1>

                    <form action="#" method="POST">                <center>


                            <fieldset style="width: 300px; padding: 10px; height: 200px">
                                <legend>Report Card</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: auto" >


                                    <%

try
{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
java.sql.Statement st=con.createStatement();
st.execute("insert into result(total,correct,wrong,uname,subject) values("+10+","+session.getAttribute("correct")+","+session.getAttribute("wrong")+",'"+session.getAttribute("uname")+"','"+session.getAttribute("sub")+"')");
}
catch(Exception ex)
        {
    out.println(ex.getMessage());
    }
%>



    
                

                <tr>
                    <td align="center">Subject Name</td>
                    <td align="center"><%=session.getAttribute("sub")%></td>
                    <td></td>
                </tr>

                    <tr>
                    <td align="center"><u>Result</u></td>
                    <td></td>
                    <td></td>
                    </tr>

                    <tr>
                    <td align="center">Total</td>
                    <td align="center">10</td>
                    <td></td>
                    </tr>

                    <tr>
                    <td align="center">Correct Answers</td>
                    <td align="center"><%=session.getAttribute("correct")%></td>
                    <td></td>
                    </tr>

                    <tr>
                    <td align="center">Wrong Answers</td>
                    <td align="center"><%=session.getAttribute("wrong")%></td>
                    <td></td>
                    </tr>

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
