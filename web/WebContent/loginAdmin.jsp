<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Sign in page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/navigation.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/navigation.js"></script>


        <!--Start banner css and javascript-->
        <link rel="stylesheet" href="css/bannercss.css" type="text/css">





    </head>
    <body>
        <div id="mainbody">
            <%@include file = "header.html" %>
            
            <div class="whitecontant">

                <div style="height: 370px; width: 99.50%; border: 1px solid gray">
                    <h1>&nbsp;</h1>
                                        <h1>&nbsp;</h1>

                    <form action="admin" method="POST">                <center>


                            <fieldset style="border-radius:10px; background:rgba(67, 148, 217, 0.1); width: 300px; padding: 10px; height: 200px">
                                <legend>Admin Login Page</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: 120px" >
                                    <tr>
                                        <td>Username</td><td><input onfocus="if(this.value=='Enter User Name...'){this.value=''}"  onblur="if(this.value==''){this.value='Enter User Name...'}" value="Enter User Name..." type="text" name="txtUserName" value="" id="amit_txt" /></td>

                                    </tr>
                                    <tr>
                                        <td>Password</td><td><input type="password" name="txtPassword" value="" id="amit_txt" /></td>
                                    </tr>
                                    <tr><td colspan="2" align="">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input type="submit" value="Login" id="amit_button" /> &nbsp;&nbsp;&nbsp;<input type="reset" value="Re-Set" id="amit_button" />
                                        </td></tr>
                                </table>
                              

                            </fieldset>


                        </center>
                    </form><br/>

    <%
                        String str = null;
                        str = (String) session.getAttribute("admin");
                        if (str != null) {
            %>
            <center><span style="font-size:large; font-weight: bold; color: green"><%=str%></span></center>
            <%
                            session.removeAttribute("admin");
                        } else {

                            session.setAttribute("admin", "");
                        }

            %>

                </div>
            </div>
        </div>
        <%@include file = "footer.html" %>


    </body>
</html>
