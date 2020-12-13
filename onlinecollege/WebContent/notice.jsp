<%-- 
    Document   : notice
    Created on : Jan 31, 2013, 10:42:12 PM
    Author     : access
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice Board</title>
    </head>
    <body>
        <div id="mainbody">
            <%@include file = "header_admin.jsp" %>

            <div class="whitecontant">

                <div style="height: 370px; width: 99.50%; border: 1px solid gray">
                    <h1>&nbsp;</h1>
                                        <h1>&nbsp;</h1>

                    <form action="NoticeAuth" method="POST">                <center>


                            <fieldset style="width: 500px; padding: 10px; height: auto">
                                <legend>Notice Slip</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: 120px" >
                                    <tr>
                                        <td>Student Name</td><td><input type="text" name="txtStudentName" value="" id="amit_txt" /></td>

                                    </tr>
                                    <tr>
                                        <td>Notice</td>
                                        <td>
                                            <textarea name="txtNotice" cols="" rows=""></textarea>

                                            
                                        </td>
                                    </tr>
                                    <tr><td colspan="2" align="">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input type="submit" value="Submit" id="amit_button" />
                                        </td></tr>
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
