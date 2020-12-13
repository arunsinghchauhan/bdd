<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>HIET Attendance System</title>
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

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
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
		<%@ include file="header.jsp" %>

		<div class="tab_bg">
			<div class="ltabs"></div>
			<div class="tabs">
				<div class="tab" style="width: 276px;">
					<img src="${pageContext.request.contextPath}/images/icon1.png"
						alt="" border="0" class="tab_icon" />
					<p class="tab_text">
						<a href="http://all-free-download.com/free-website-templates/">Summer
							School Program </a><br /> Hello Mr. xxxx!
					</p>
				</div>
			</div>

			<div class="clear"></div>
		</div>

		<div class="center_content">
		
			<form	action="processData.jsp"
										method="post">
			<table width="895px" height="435" border="0">
				<tr>
					<th width="147" height="364" align="center" valign="top"
						bgcolor="#3399CC" scope="col">
						<div class="left_menu_tab">

							<p class="tab_text">
								<a href="http://all-free-download.com/free-website-templates/">Profile</a><br />
								<br /> <a
									href="http://all-free-download.com/free-website-templates/">Result</a>
								<br /> <br />
						</div>
					</th>
					<th width="715" valign="top" scope="col">

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr bgcolor="#accaac">
											    <td align="left">Action</td>
												<td align="left">Lib Id:</td>
												<td align="left">First Name</td>
												<td align="left">Email</td>
												<td align="left">phone</td>
												<td align="left">branch</td>
												<td align="left">Image</td>
												
											</tr>
											
											<%
											 //loading the driver
											Class.forName("com.mysql.jdbc.Driver");
											//Connection points to the database
											Connection connection=DriverManager.
													getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
											//Creating statement to execute query
											String sql="select *  from student_registration_tbl";
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
												<td align="left"><%=rs.getString(7) %></td>
												<td align="left"><%=rs.getString(8) %></td>
												<td align="left"><%=rs.getString(12) %></td>
												<td align="left"><img src="showImageById.jsp?libid=<%=rs.getString(1)%>" width="25" height="25" alt="center"/></td>
												
											</tr>
											<% }%>

										</table>
									
									
									
								</th>
								<th width="137" valign="top" bgcolor="#FFFFFF" scope="col">&nbsp;<img
									src="${pageContext.request.contextPath}/images/attendance.png"
									width="150" height="233" /></th>
							</tr>
						</table>
					</th>
				</tr>
				<tr>
					<td height="50" colspan="2"><span class="style1">
					<%@ include
								file="footer.jsp"%></span></td>
				</tr>
			</table>
</form>
		</div>
</body>
</html>
