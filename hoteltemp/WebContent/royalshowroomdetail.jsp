<%@page import="com.utils.DateUtils"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head></head>
<body>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F7E6D4">
  <tr>
    <td valign="top"><table width="780" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="360" height="86" align="right" valign="top" bgcolor="#996138" style="background-image:url(images/index_02.gif); background-repeat:repeat-x; background-position:top;"><a href="index.html"><img src="images/index_04.gif" alt="" width="304" height="80" border="0" /></a></td>
        <td width="420" bgcolor="#996138" style="background-image:url(images/index_02.gif); background-repeat:repeat-x; background-position:top;">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" valign="top"><table width="730" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="419" valign="top"><img src="images/index_20.gif" width="419" height="250" alt="" /></td>
            <td width="311" align="center" valign="top" bgcolor="#5C3317">
			<div style="padding-top:25px; padding-bottom:12px;"><img src="images/index_23.gif" width="253" height="29" alt="" /></div>
			<div style="padding-left:5px;"><form id="reservation-form" name="reservation-form" method="post" action="royalshowroomdetail.jsp" style="margin:auto;">
           <table>

					<form action="" method="post">
						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">

									<table width="546" border="1"
										style="border: 2px solid; border-radius: 10px;">
										<tr bgcolor="#heshe">
											<td align="left">Room No:</td>
											<td align="left">Room Type</td>
											<td align="left">Bed Type</td>
											<td align="left">Bill Per Day</td>


										</tr>

										<%
											
											String checkin=request.getParameter("checkin");
											String checkinTokens[]=checkin.split("-");
											checkin=checkinTokens[2]+"-"+checkinTokens[1]+"-"+checkinTokens[0];
											String checkout=request.getParameter("checkout");
											String checkoutTokens[]=checkout.split("-");
										    checkout=checkoutTokens[2]+"-"+checkoutTokens[1]+"-"+checkoutTokens[0];
											System.out.println("checkin = "+checkin);
											System.out.println("checkout = "+checkout);
											
											String checkAvailability="select *  from royaltotalroom_tbl where roomno not in (select roomno from  royalbookroominfo_tbl where checkintime>='"+checkin+"' and checkouttime<='"+checkout+"')";
											System.out.println("checkAvailability = "+checkAvailability);
											
											//loading the driver
											Class.forName("com.mysql.jdbc.Driver");
											//Connection points to the database
											Connection connection=DriverManager.
													getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
											//Creating statement to execute query
											//String sql="select *  from totalroom_tbl INNER JOIN bookroominfo_tbl ON totalroom_tbl.roomno=bookroominfo_tbl.roomno and bookroominfo_tbl.checkin>="+DateUtils.getFromDateDateInSQLFormat(checkin)+" and bookroominfo_tbl.checkout<"+DateUtils.getFromDateDateInSQLFormat(checkout);
											PreparedStatement pstmt=connection.prepareStatement(checkAvailability);
											//executing the query to the database
									        ResultSet rs=pstmt.executeQuery();
									    	while(rs.next()){
									    		String roomno=rs.getString(1);
											%>
										<tr>


											<td align="left"><%=roomno %></td>
											<td align="left"><%=rs.getString(2) %></td>
											<td align="left"><%=rs.getString(3) %></td>
											<td align="left"><%=rs.getString(4) %> &nbsp; &nbsp; <a
												href="royalcustomerinfo.jsp?roomno=<%=roomno%>&checkin=<%=checkin%>&checkout=<%=checkout%>">Book
													Now</a></td>

										</tr>
										<% }%>

									</table>



								</th>
							</tr>
						</table>




					</form>
					  <tr>
        <td colspan="2" valign="top"><table width="730" border="0" align="center" cellpadding="0" cellspacing="0" style="border-top:#FFFFFF 2px solid;">
          <tr>
            <td width="11" align="left" valign="top" bgcolor="#EABE94"><img src="images/index_31.gif" width="11" height="38" alt="" /></td>
            <td width="708" bgcolor="#EABE94"><pre class="menu"><a href="index.html">Home Page</a>                  <a href="content.html">About Us</a>                  <a href="content.html">Services</a>                  <a href="content.html">Booking</a>                  <a href="content.html">Latest News</a>                  <a href="contact.html">Contacts</a></pre></td>
            <td width="11" align="right" valign="top" bgcolor="#EABE94"><img src="images/index_34.gif" width="11" height="38" alt="" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top" style="padding-top:15px; padding-bottom:15px;">
	<table width="94%" height="14" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="67%" valign="top">
		<div style="padding-bottom:12px; padding-top:10px;"><img src="images/index_41.gif" width="335" height="25" alt="" /></div>
		<div style="padding-bottom:30px;">
		<table width="98%" border="0" cellspacing="0" cellpadding="0">
  		<tr>
  		  <td width="25%" align="center" valign="top"><img src="images/index_46.gif" width="89" height="79" alt="" /></td>
		  <td width="75%" valign="top" class="body">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam quis turpis eu libero varius vestibulum.<br />
				  <br />
			In feugiat. Sed et turpis ac risus aliquet rhoncus. Nam cursus molestie mleom kerelantum lobortis.<br />
			<br />
			<a href="content.html"><strong>Read more..</strong></a></td>
	  	</tr>
		</table>
		</div>
		<div><table width="98%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td width="47%" align="left" valign="top"><img src="images/index_53.gif" width="197" height="140" alt="" /></td>
			<td width="53%" align="left" valign="top">
			<div><img src="images/index_55.gif" width="157" height="22" alt="" /></div>
			<div class="body">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam quis turpis eu libero varius vestibulum.<br />
				  <br />
			Nam cursus molestie mleom kerelantum lobortis.<br />
			<br />
			<a href="content.html"><strong>Read more..</strong></a></div>
			</td>
		  </tr>
		</table>
		</div>
		</td>
        <td width="33%" valign="top" style="padding-left:15px;">
		<div><img src="images/index_39.gif" width="162" height="26" alt="" /></div>
		<div class="body1" style="padding:8px;"><strong>04th Octber,06</strong><br />
In feugiat. Sed et turpis ac risus aliquet . Nam cursus  lobortis.<br />
<br />
          <a href="#"><strong>read more</strong></a></div>
		  <div style="text-align:center"><img src="images/index_49.gif" width="212" height="86" alt="" /></div>
		  <div class="body1" style="padding:8px;"><strong>04th Octber,06</strong><br />
In feugiat. Sed et turpis ac risus aliquet rhoncus Nam cursus.<br />
<br />
          <a href="#"><strong>read more</strong></a></div>
		  <div class="body1" style="padding:8px;"><strong>04th Octber,06</strong><br />
In feugiat. Sed et turpis ac risus aliquet rhoncus nam cursus.<br />
<br />
          <a href="#"><strong>read more</strong></a></div>
		</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="82" bgcolor="#AA6F47" style="background-image:url(images/index_61.gif); background-position:bottom; background-repeat:repeat-x;"><pre class="footer"><a href="index.html">Home Page</a>     ::     <a href="content.html">About Us</a>     ::     <a href="content.html">Services</a>     ::     <a href="content.html">Booking</a>     ::     <a href="content.html">Latest News</a>     ::     <a href="contact.html">Contacts</a><br />    Copyright &copy; 2003-2006 companyname.com. All Rights Reserved.</pre></td>
  </tr>
</table>
				</div>
</body>
</html>
