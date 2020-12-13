<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>five*****</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<!--[if IE 6]><script type="text/javascript" src="unitpngfix.js"></script><![endif]-->
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
}
-->
</style>



<style type="text/css">
<!--
.style8 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 12px;
}

.style9 {
	font-family: Arial, Helvetica, sans-serif
}

body,td,th {
	color: #000000;
}

.style12 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}

.style13 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
</head>
<body>
		<%@ include file="headerfive.jsp" %>

		<div class="tab_bg">
			<div class="ltabs"></div>
			<div class="tabs">
				
			</div>

			<div class="clear"></div>
		</div>

		<div class="center_content">
		
			<form	action=""
										method="post">
			<table width="895px" height="435" border="0">
				<tr>
					<th width="147" height="364" align="center" valign="top"
						bgcolor="#3399CC" scope="col">
						<div class="left_menu_tab"></div>

							
					</th>
					<th width="715" valign="top" scope="col">

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr bgcolor="#accaac">
											    
												
												<td align="left">First Name</td>
												<td align="left">Email</td>
												
												
											</tr>
											
											<%
											 //loading the driver
											Class.forName("com.mysql.jdbc.Driver");
											//Connection points to the database
											Connection connection=DriverManager.
													getConnection("jdbc:mysql://localhost:3306/hiet_db","root","root");
											//Creating statement to execute query
											String sql="select *  from bookingconnetion_tbl where checkouttime='00'";
											PreparedStatement pstmt=connection.prepareStatement(sql);
											//executing the query to the database
									        ResultSet rs=pstmt.executeQuery();
									    	while(rs.next()){
											%>
											<tr>
											   
												<td align="left"><%=rs.getString(2) %></td>
												<td align="left"><%=rs.getString(9) %></td>
												
											</tr>
											<% }%>

										</table>
									
									
									
								</th>
								
							</tr>
						</table>
					</th>
				</tr>
				<tr>
					<td height="50" colspan="2"><span class="style1">
					<%@ include
								file="footerfive.jsp"%></span></td>
				</tr>
			</table>
</form>
		</div>
</body>
</html>
