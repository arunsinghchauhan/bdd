<%--
    Document   : adminAccount
    Created on : Oct 27, 2012, 6:04:44 PM
    Author     : access
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account-Admin</title>
    </head>
    <body>
                <div id="mainbody">
            <%@include file = "header_student.jsp" %>
          <div class="whitecontant">

                <div style="height: 300px; width: 99.50%; border: 1px solid gray">
                    <img alt="" align="right" height="150" width="150" src="Upload/<%=session.getAttribute("photo")%>"/>

                    <center>
                        <h2>Hello &nbsp;&nbsp;<%=session.getAttribute("uname")%></h2>
                    </center>
                </div>




            </div>
        </div>
        <%@include file = "footer.jsp" %>


    </body>
</html>
