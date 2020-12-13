<%@page import="com.model.RoyalRoomData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Royal Hotel | Booking</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>

		

		<div class="center_content">
		
			<form	action="royalupdateRoom.jsp"
										method="post">
		

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
								      <%
								      
								         RoyalRoomData roomData=(RoyalRoomData)request.getAttribute("roomData");
								       
								      %>
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr>
												<td align="left">Room No:</td>
												<td align="left"><input type="text" name="roomno" size="30"
													maxlength="120" readonly="readonly" value="<%=roomData.getRoomNo()%>"/></td>
											</tr>

											<tr>
												<td align="left">Room Type:</td>
												<td align="left">
													<select name="roomtype">
														<option>Premium</option>
														<option>business</option>
												     	<option>Economy</option>
														
														
													</select>
													
												</td>
												
											</tr>
												<tr>
												<td align="left">Bed Type:</td>
												<td align="left">
													<select name="bedtype">
														<option>Single</option>
														<option>Double</option>
														
													</select>
													
												</td>
											</tr>
			                                      <tr>
												<td align="left">Bill per day:</td>
												<td align="left">
													<select name="bill">
														<option>1500</option>
														<option>1000</option>
														<option>2500</option>
														<option>3000</option>
														<option>3500</option>
													</select>
													
												</td>
											</tr>
			

										</table>
										<p>
											<input type="submit" value="update"/><input
												type="reset" value="Reset" name="B2" />
										</p>
									
									
								</th>
								
</form>
		</div>
</body>
</html>
