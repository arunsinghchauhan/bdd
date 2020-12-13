
<%@page contentType="text/html" pageEncoding="UTF-8"  session="false"%>
<html>
    <body>
        <form action="" method="post" bgcolor="green">
        <center>
            
            <table>
                <tr>
                    <td>Login Email*</td>
                    <td><input type="email" required="true" name="loginid"></td>
                </tr>
                <tr>
                    <td>Login Password*</td>
                    <td><input type="password" name="password" required="true"></td>
                </tr>
                <tr>
                     <td>Date Of Birth</td>
                    <td><input type="date" name="dob"></td>
                </tr>
                <tr>
                     <td>Address</td>
                     <td><textarea rows="5" cols="50" name="address"></textarea></td>
                </tr>
                <tr>
                     <td>Phone no</td>
                    <td><input type="number" name="phoneno"></td>
                </tr>
                
                <tr>
                     <td></td>
                    <td><input type="submit" value="Register"/></td>
                </tr>
            </table>
        </center>
        </form>
    </body>
    
    
</html>
