<%-- 
    Document   : uploadAssign
    Created on : Jan 31, 2013, 5:12:46 PM
    Author     : access
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Assignments</title>
    </head>
    <body>
                <div id="mainbody">
            <%@include file = "header_admin.jsp" %>
          <div class="whitecontant">

                <div style="height: 300px; width: 99.50%; border: 1px solid gray">


                     <form enctype="multipart/form-data" action="AssignAuth" method="POST">                <center>


                            <fieldset style="border-radius:10px; background:rgba(67, 148, 217, 0.1); width: 300px; padding: 10px; height: auto">
                                <legend>Upload Assignments</legend>
                                <table id="amittxt" cellpadding="3" cellspacing="3" width="400px" style="height: 120px" >
                                    <tr>
                        <td align="center"><b>Course</b></td><td>:</td>
                        <td align="left">
                            <select name="txtCourse">
                                <option>--- Select Course ---</option>
                                <option>B.Tech</option>

                            </select>
                        </td>
                    </tr>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    <tr>
                        <td align="center"><b>Semester</b></td><td>:</td>
                        <td align="left">
                            <select name="txtSemester">
                                <option>--- Select Semester ---</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                            </select>
                        </td>
                    </tr>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    <tr>
                        <td align="center"><b>Branch</b></td><td>:</td>
                        <td align="left">
                            <select name="txtBranch">
                                <option>--- Select Branch ---</option>
                                <option>CS</option>
                                <option>IT</option>
                                </select>
                        </td>
                    </tr>


                    <tr>
                        <td align="center"><b>Year</b></td><td>:</td>
                        <td align="left">
                            <select name="txtYear">
                                <option>--- Select Year ---</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>


                            </select>
                        </td>
                    </tr>


                    <tr>
                        <td align="center"><b>Upload Assignments</b></td><td>:</td>
                        <td align="left">
                            <input type="file" name="txtUpload" />
                        </td>
                    </tr>


                    <tr></tr><tr></tr><tr></tr>
                    <tr>
                <td colspan="3">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="button" type="submit" value="Upload" />
                </td>
            </tr>

                                </table>


                            </fieldset>


                        </center>
                    </form>
                </div>




            </div>
        </div>
        <%@include file = "footer.jsp" %>


    </body>

</html>
