<%-- 
    Document   : instructions
    Created on : Feb 1, 2013, 1:37:20 PM
    Author     : access
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instruction Page</title>
    </head>
    <body>
        <div id="mainbody">
            <%@include file = "header_student.html" %>

            <div class="whitecontant">

                <div style="height: 370px; width: 99.50%; border: 1px solid gray">
                    <h1>&nbsp;</h1>
                                        <h1>&nbsp;</h1>

                    <form action="selectOnlineTest.jsp" method="POST">                <center>


                            <fieldset style="width: 300px; padding: 10px; height: 200px">
                                <legend>Instructions</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: 120px" >


                                    <tr>

                <td>1</td>
                <td>:</td>
                <td align="left">There are Ten Questions in Test.</td>

            </tr>

            <tr>
                <td>2</td>
                <td>:</td>
                <td align="left">Each carry 1 Mark.</td>
            </tr>

            

            <tr>
                <td>4</td>
                <td>:</td>
                <td align="left">Continue to Next Question by clicking on the Next Button</td>
            </tr>

                                    <tr><td colspan="2" align="">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input type="submit" value="Continue" id="amit_button" />
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
