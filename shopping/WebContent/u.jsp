<%-- 
    Document   : index
    Created on : May 28, 2013, 4:42:48 PM
    Author     : ashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="upload.jsp" method="post" enctype="multipart/form-data">
            <table border="0" bgcolor="lightgreen" cellspacing="7" cellpadding="6">
                
                <tbody>
                    <tr>
                        <td>Product Name:</td>
                        <td><input type="text" name="pname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Product Description:</td>
                        <td><textarea name="pdesc" rows="4" cols="20">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>Product Price</td>
                        <td><input type="text" name="pprice" value="" /></td>
                    </tr>
                    <tr>
                        <td>Product Category</td>
                        <td><input type="text" name="pcat" value="" /></td>
                    </tr>
                    <tr>
                        <td>Product Quantity:</td>
                        <td><input type="text" name="pqua" value="" /></td>
                    </tr>
                    <tr>
                        <td>Upload Product:</td>
                        <td><input type="file" name="file" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
