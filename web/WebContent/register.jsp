<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Student-Sign Up Page</title>
        </head>
    <body>


<div id="mainbody">

        <%@include file="header.html" %>
            <div class="whitecontant">

                <div style="width: 99.50%; border: 1px solid gray">

                    <h1>&nbsp;</h1>
                    <h1>&nbsp;</h1>
                    <form enctype="multipart/form-data" action="register" method="POST">                <center>


                            <fieldset style="border-radius:10px; background:rgba(67, 148, 217, 0.1); width: 700px; padding: 10px; height:auto">
                                <legend>Sign up</legend>
                                <table cellpadding="6" cellspacing="6" width="400px" id="amittxt" >
                                    <tr>
                                        <td align="left">First Name</td><td><input type="text" name="txtFirstName" value="" id="amit_txt" /></td>

                                    </tr>
                                    <tr>
                                        <td align="left">Last Name</td><td><input type="text" name="txtLastName" value="" id="amit_txt" /></td>

                                    </tr>
                                    <tr>
                                        <td align="left">Gender</td><td><select name="gender">
                                                <option>------------Gender------------</option>
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                            </select></td>

                                    </tr>
                                    <tr>
                                        <td align="left">
                                        Date Of Birth
                                        </td>
                                       <td><input type="text" name="txtDate" readonly onclick="scwShow(this,event);" value="" id="amit_txt" /></td>
                                        
                                    </tr>

                                    <tr>
                                        <td align="left">Address</td><td><input type="text" name="txtAddress" value="" id="amit_txt" /></td>

                                    </tr>
                                       <tr>
                                        <td align="left">Contact Number</td><td><input type="text" name="txtContactNumber" value="" id="amit_txt" /></td>

                                    </tr>
                                       <tr>
                                        <td align="left">Email ID</td><td><input type="text" name="txtEmail" value="" id="amit_txt" /></td>

                                    </tr>



                                       <tr>
                                           <td align="left">Upload Photo</td><td><input style="width:195px;height:25px" type="file" name="txtUpload" value="" id="amit_txt" /></td>

                                    </tr>


                                    <tr>
                                        <td align="left">Username</td><td><input type="text" name="txtUserName" value="" id="amit_txt" /></td>

                                    </tr>
                                    <tr>
                                        <td align="left">Password</td><td><input type="password" name="txtPassword" value="" id="amit_txt" /></td>
                                    </tr>

                                                <tr>
                        <td align="left"><b>Course</b></td>
                        <td align="left">
                            <select name="txtCourse">
                                <option>--- Select Course ---</option>
                                <option>B.Tech</option>

                            </select>
                        </td>
                    </tr>
                    <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                    <tr>
                        <td align="left"><b>Semester</b></td>
                        <td align="left">
                            <select name="txtSem">
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
                        <td align="left"><b>Branch</b></td>
                        <td align="left">
                            <select name="txtBranch">
                                <option>--- Select Branch ---</option>
                                <option>CS</option>
                                <option>IT</option>
                                </select>
                        </td>
                    </tr>


                    <tr>
                        <td align="left"><b>Year</b></td>
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


                                    &nbsp;&nbsp;&nbsp;&nbsp;

                                    <tr>
                                        <td  colspan="3" align="">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="submit" value="Submit" id="amit_button" />
                                               <input type="reset" value="Re-Set" id="amit_button" />
                                        </td></tr>
                                </table>


                            </fieldset>


                        </center>
                    </form><br/>

                </div>
            </div>
</div>
        

        <%@include file="footer.html" %>
    </body>
</html> 