<%-- 
    Document   : updateStudent
    Created on : Dec 27, 2012, 6:16:07 PM
    Author     : access
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>My Profile</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/navigation.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/navigation.js"></script>


        <!--Start banner css and javascript-->
        <link rel="stylesheet" href="css/bannercss.css" type="text/css">





    </head>
<body>
        <div id="mainbody">
            <%@include file = "header_student.html" %>

            <div class="whitecontant">

                <div style="height: 370px; width: 99.50%; border: 1px solid gray">
                    <h1>&nbsp;</h1>
                                        <h1>&nbsp;</h1>

                    <form enctype="multipart/form-data" action="UpdateProfileAuth" method="POST">                <center>


                            <fieldset style="border-radius:10px; background:rgba(67, 148, 217, 0.1); width: 700px; padding: 10px; height:auto">
                                <legend>My Profile</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: 120px" >
                

            <tr>

                <td>First Name</td>
                <td>:</td>
                <td><input value="<%=session.getAttribute("fname")%>" name="txtFirstName" type="text" size="20" /></td>

            </tr>

                        <tr>

                <td>Last Name</td>
                <td>:</td>
                <td><input class="textbox" value="<%=session.getAttribute("lname")%>" name="txtLastName" type="text" size="20" /></td>

            </tr>


             <tr>
                <td>Gender</td>
                <td>:</td>
                <td><select name="gender">
<%
if(session.getAttribute("gender").equals("male"))
    {
%>
<option>------------Gender------------</option>
<option value="male" selected>Male</option>
<option value="female">Female</option>

<%
}
if(session.getAttribute("gender").equals("female"))
    {
%>

<option>------------Gender------------</option>
<option value="male" selected>Male</option>
<option  selected value="female">Female</option>

<%
}
%>
</select>
</td>
            </tr>


             <tr>

                <td>Date of Birth</td>
                <td>:</td>
                <td><input class="textbox" value="<%=session.getAttribute("dob")%>" name="txtDate" type="text" size="20" readonly onclick="scwShow(this,event);"/></td>

            </tr>


            <tr>

                <td>Address</td>
                <td>:</td>
                <td><input class="textbox" value="<%=session.getAttribute("address")%>" name="txtAddress" type="text" size="20" /></td>

            </tr>



            <tr>

                <td>Contact Number</td>
                <td>:</td>
                <td><input class="textbox" value="<%=session.getAttribute("contact")%>" name="txtContactNumber" type="text" size="20" /></td>

            </tr>

            <tr>

                <td>Email</td>
                <td>:</td>
                <td><input class="textbox" value="<%=session.getAttribute("email")%>" name="txtEmail" type="text" size="20" /></td>

            </tr>



            <tr>

                <td>Upload Photo</td>
                <td>:</td>
                <td><input class="textbox" value="<%=session.getAttribute("photo")%>" name="txtUpload" type="file" size="20" /></td>

            </tr>


            <tr>

                <td>User Name</td>
                <td>:</td>
                <td><input class="textbox" value="<%=session.getAttribute("uname")%>" name="txtUserName" type="text" size="20" /></td>

            </tr>

            <tr>
                <td>Password</td>
                <td>:</td>
                <td><input class="textbox" value="<%=session.getAttribute("password")%>" type="password" name="txtPassword" size="20" /></td>
            </tr>

          

            <tr>
                <td colspan="3">

                <input class="button" type="submit" value="Update Profile" />
                </td>
            </tr>
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
