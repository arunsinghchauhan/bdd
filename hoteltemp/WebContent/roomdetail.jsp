<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room Detail</title>
</head>
<body  bgcolor="#accfff">

<div class="center_content">
		
			<form 	action="Calroomdetail">
			<table width="895px" height="435" border="0">
				<tr>
					<th width="147" height="364" align="center" valign="top"
						bgcolor="#3399CC" scope="col">
						
					</th>
					<th width="715" valign="top" scope="col">

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr>
												<td align="left">Room No:</td>
												<td align="left"><input type="text" name="roomno" id="roomno" size="30"
													maxlength="120" /></td>
											</tr>

											<tr>
											<td align="left">Room Type:</td>
											<td align="left">
											<select name="roomtype" id="roomtype">
														<option>Premium</option>
														<option>Business</option>
														<option>Economic</option>
														
													</select>
												</td>
											</tr>

											<tr>
												<td align="left">Bed Type:</td>
										      <td align="left">
												
											<select name="bedtype" id="bedtype">
														<option>Single</option>
														<option>Double</option>
														
													</select>
													</td>
											</tr>
											<tr>
												<td align="left">Bill:</td>
												<td align="left"><input type="text" id="bill" name="bill"
													size="30" maxlength="120" /></td>
											</tr>
											
										</table>
										<p>
											<input type="submit" value="Submit"/><input
												type="reset" value="Reset" name="B2" />
										</p>
									
									
								</th>
								
							</tr>
						</table>
					</th>
				</tr>
				<tr>
					<td height="50" colspan="2"><span class="style1">
					
				</tr>
			</table>
</form>
		</div>
</div>		
</body>
</html>
