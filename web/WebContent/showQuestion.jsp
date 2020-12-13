<%-- 
    Document   : showQuestion
    Created on : Feb 1, 2013, 4:35:52 PM
    Author     : access
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questions Page</title>
    </head>
    <body>
        <div id="mainbody">
            <%@include file = "header_student.html" %>

            <div class="whitecontant">

                <div style="height: 370px; width: 99.50%; border: 1px solid gray">
                    <h1>&nbsp;</h1>
                                        <h1>&nbsp;</h1>

                    <form action="ResultCheck" method="POST">                <center>


                            <fieldset style="width: 300px; padding: 10px; height: 200px">
                                <legend>Online Test</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: auto" >


                                    <tr>

                <td><input type="hidden" name="ans" value="<%=session.getAttribute("answer")%>"/></td>

                <td align="center"><%=session.getAttribute("question")%></td>

            </tr>

            <tr>

                <td><input type="radio" name="rdOption" value="<%=session.getAttribute("option1")%>"/></td>

                <td align="left"><%=session.getAttribute("option1")%></td>
            </tr>

            <tr>
                <td><input type="radio" name="rdOption" value="<%=session.getAttribute("option2")%>"/></td>
                <td align="left"><%=session.getAttribute("option2")%></td>
            </tr>

            <tr>
                <td><input type="radio" name="rdOption" value="<%=session.getAttribute("option3")%>"/></td>
                <td align="left"><%=session.getAttribute("option3")%></td>
            </tr>

            <tr>
                <td><input type="radio" name="rdOption" value="<%=session.getAttribute("option4")%>"/></td>
                <td align="left"><%=session.getAttribute("option4")%></td>
            </tr>



                                    <tr><td colspan="2" align="">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input type="submit" value="Next" id="amit_button" />
                                        </td></tr>
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
