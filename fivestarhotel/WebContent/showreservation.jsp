
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Five Star Hotel</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<script src="js/maxheight.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page1" onload="new ElementMaxHeight();">
<div id="main">
  
		<%@ include file="headerfive.jsp" %>
		<form	action="fiveconnectivity.jsp"
										method="post">
<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr bgcolor="#accaac">
											    <td align="left">Action</td>
												<td align="left">checkindate:</td>
												<td align="left">month</td>
												<td align="left">checkoutdate</td>
												<td align="left">month</td>
												<td align="left">persons</td>
												<td align="left">rooms</td>
												
											</tr>
											
											<%
											 //loading the driver
											Class.forName("com.mysql.jdbc.Driver");
											//Connection points to the database
											Connection connection=DriverManager.
													getConnection("jdbc:mysql://localhost:3306/hiet_db","root","root");
											//Creating statement to execute query
											String sql="select *  from five_tbl";
											PreparedStatement pstmt=connection.prepareStatement(sql);
											//executing the query to the database
									        ResultSet rs=pstmt.executeQuery();
									    	while(rs.next()){
											%>
											<tr>
											    <td align="left">
											    <a href="delStudentRecordById.jsp?libid=<%=rs.getString(1)%>"><img src="images/close.png"/>
											    </a>
											    
											    <a href="editStudentRecordById.jsp?libid=<%=rs.getString(1)%>"><img src="images/edit.png"/>
											    </a>
											    
											    </td>
												<td align="left"><%=rs.getString(1) %></td>
												<td align="left"><%=rs.getString(2) %></td>
												<td align="left"><%=rs.getString(3) %></td>
												<td align="left"><%=rs.getString(4) %></td>
												<td align="left"><%=rs.getString(5) %></td>
												<td align="left"><%=rs.getString(6) %></td>
												
											</tr>
											<% }%>

										</table>
									
									
									
								</th>
								
							</tr>
						</table>
					</th>
				</tr>
				
			</table>
			<%@ include
								file="footerfive.jsp"%>
								</form>
</body>
</html>