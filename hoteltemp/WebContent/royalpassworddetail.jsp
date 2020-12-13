<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Five Star Hotel | Booking</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page5" onload="new ElementMaxHeight();">
<div id="main">
 
                             
        
        <form	action=""
										method="post">
        <table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr bgcolor="#heshe">
											    <td align="left">Action:</td>
											    <td align="left">User Id:</td>
												<td align="left">Password</td>
												<td align="left">Account Type</td>
											
												
											</tr>
											
											<%
											 //loading the driver
											Class.forName("com.mysql.jdbc.Driver");
											//Connection points to the database
											Connection connection=DriverManager.
													getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
											//Creating statement to execute query
											String sql="select *  from royallogin_tbl" ;
											PreparedStatement pstmt=connection.prepareStatement(sql);
											//executing the query to the database
									        ResultSet rs=pstmt.executeQuery();
									    	while(rs.next()){
									    		
											%>
											<tr>
											<td align="left">
											    <a href="royaldelPasswordRecordById.jsp?password=<%=rs.getString(2)%>"><img src="images/close.png"/>
											    </a>
											    
											    <a href="royaleditPasswordRecordById.jsp?password=<%=rs.getString(2)%>"><img src="images/edit.png"/>
											    </a>
											    
											    <a href="royaladdPasswordRecordById.jsp?password=<%=rs.getString(2)%>"><img src="images/add.jpg"/>
											    </a>
											    
											    </td>
											    
											    
												
												<td align="left"><%=rs.getString(1) %></td>
												<td align="left"><%=rs.getString(2) %></td>
												<td align="left"><%=rs.getString(3) %></td>
												
											</tr>
											<% }%>

										</table>
									
									
									
								</th>
															</tr>
						</table>
				
					
				
			
</form>
		</div>
</body>
</html>
        