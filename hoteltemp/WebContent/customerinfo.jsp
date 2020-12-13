<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Five Star Hotel | Booking</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
<script type="text/javascript" src="calander.js"></script>
<script src="jquery-1.9.1.js"></script>
<script src="jquery.validate.min.js"></script>
<script>
$(document).ready(function() {
 $('#signup').validate({
   rules: {
     email: {
        required: true,
        email: true
     },
     idnumber: {
         required: true,
         rangelength:[6,8]
      },
     enterpin: {
        required: true,
        number:true,
        rangelength:[16,16]
     },
     phone:{
    	 required: true,
         number:true,
         rangelength:[10,10]
    	 
     }
   }, //end rules
   messages: {
      email: {
         required: "Please supply an e-mail address",
         email: "This is not a valid email address"
       },
       idnumber: {
           required: "Please supply a id number",
           rangelength: "idnumber must be between 6  and 8 characters long"
         },
       enterpin: {
        required: 'Please provide your Card number',
        number: 'Please provide correct Card number ',
        rangelength: 'Card number must be 16 characters long'
      },
      phone:{
    	  required: 'Please provide your phone number',
          number: 'Please provide a correct phone number',
          rangelength: 'Phone number must be 10 characters long'
     	 
      }      
   },
   errorPlacement: function(error, element) { 
       if ( element.is(":radio") || element.is(":checkbox")) {
          error.appendTo( element.parent()); 
        } else if(element.is("textarea")){
          error.insertBefore(element);	
        }  else {
          error.insertAfter(element);
        } 
    } 

  }); // end validate 
}); // end ready
</script>
<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page5" onload="new ElementMaxHeight();">
<div id="main">
  <!-- header -->
 <div id="header">
    <div class="row-1">
      <div class="wrapper">
        <div class="logo">
          <h1><a href="#">Five Star</a></h1>
          <em>Hotel</em> <strong>True Luxury</strong> </div>
        <div class="phones"> 1-800-412-45-56<br />
          1-800-542-64-48 </div>
      </div>
    </div>
    <div class="row-2">
      <div class="indent">
        <!-- header-box begin -->
        <div class="header-box">
          <div class="inner">
            <ul class="nav">
              <li><a href="user.jsp">Home page</a></li>
              <li><a href="services.jsp">Services</a></li>
              <li><a href="gallery.jsp">Gallery</a></li>
              <li><a href="restaurant.jsp">Restaurant</a></li>
              <li><a href="testimonials.jsp">Testimonials</a></li>
              <li><a href="booking.jsp" class="current">Booking</a></li>
            </ul>
          </div>
        </div>
        <br></br>
        
        <!-- header-box end -->
		
			<form id="signup"	action="cal">
			<%
			String roomno=request.getParameter("roomno");
			String checkin=request.getParameter("checkin");
			String checkout=request.getParameter("checkout");
			%>
			<input type="hidden" name="roomno" value="<%=roomno%>"/>
			<input type="hidden" name="checkin" value="<%=checkin%>"/>
			<input type="hidden" name="checkout" value="<%=checkout%>"/>
			
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
												<td align="left">Customer Name:</td>
												<td align="left"><input type="text" name="customername" id="customername" size="30"
													maxlength="120" /></td>
											</tr>

											<tr>
												<td align="left">Address:</td>
												<td align="left"><input type="text"  id="address" name="address" size="30"
													maxlength="120" /></td>
											</tr>

											<tr>
												<td align="left">City:</td>
												<td align="left"><input type="text"  id="city" name="city"
													size="30" maxlength="120" /></td>
											</tr>
											
											<tr>
												<td align="left"> Country:</td>
												<td align="left"><input type="text" id="country" name="country"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Phone:</td>
												<td align="left"><input type="text" id="phone" name="phone" size="30"
													maxlength="120" />
												</td>
											</tr>
											<tr>
												<td align="left">Id Proof:</td>
												<td align="left"><input type="text" id="idproof"  name="idproof"
													size="30" maxlength="120" /></td>
											</tr>

											<tr>
												<td align="left">Id Number:</td>
												<td align="left"><input type="text" id="idnumber" name="idnumber"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Email:</td>
												<td align="left"><input type="text" id="email" name="email"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">No.Of Adult:</td>
												<td align="left"><input type="text" id="noofadult" name="noofadult"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">No.Of Minor:</td>
												<td align="left"><input type="text" id="noofminor" name="noofminor"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Payment(Choose Bank):</td>
												<td align="left"><select name="choosebank" id="choosebank">
														<option value="Allahabad Bank">Allahabad Bank</option>
	    
	     
	     		<option value="Andhra Bank">Andhra Bank</option>
	    
	     
	     		<option value="Bank of Bahrain & Kuwait">Bank of Bahrain & Kuwait</option>
	    
	     
	     		<option value="Bank of Baroda - Corporate NetBanking">Bank of Baroda - Corporate NetBanking</option>
	    
	     
	     		<option value="Bank of Baroda - Retail NetBanking">Bank of Baroda - Retail NetBanking</option>
	    
	     
	     		<option value="Bank of Maharashtra">Bank of Maharashtra</option>
	    
	     
	     		<option value="Canara Bank">Canara Bank</option>
	    
	     
	     		<option value="Catholic Syrian Bank">Catholic Syrian Bank</option>
	    
	     
	     		<option value="Central Bank of India">Central Bank of India</option>
	    
	     
	     		<option value="City Union Bank">City Union Bank</option>
	    
	     
	     		<option value="Corporation Bank">Corporation Bank</option>
	    
	     
	     		<option value="Cosmos Bank">Cosmos Bank</option>
	    
	     
	     		<option value="Deutsche Bank">Deutsche Bank</option>
	    
	     
	     		<option value="Development Credit Bank">Development Credit Bank</option>
	    
	     
	     		<option value="Dhanlaxmi Bank">Dhanlaxmi Bank</option>
	    
	     
	     		<option value="Federal Bank">Federal Bank</option>
	    
	     
	     		<option value="HDFC">HDFC</option>
	    
	     
	     		<option value="ICICI">ICICI</option>
	    
	     
	     		<option value="IDBI">IDBI</option>
	    
	     
	     		<option value="ING Vysya bank">ING Vysya bank</option>
	    
	     
	     		<option value="Indian Bank">Indian Bank</option>
	    
	     
	     		<option value="Indian Overseas Bank">Indian Overseas Bank</option>
	    
	     
	     		<option value="IndusInd Bank">IndusInd Bank</option>
	    
	     
	     		<option value="Jammu And Kashmir Bank">Jammu And Kashmir Bank</option>
	    
	     
	     		<option value="Karnataka Bank">Karnataka Bank</option>
	    
	     
	     		<option value="Karur Vyasa Bank">Karur Vyasa Bank</option>
	    
	     
	     		<option value="Kotak Mahindra Bank">Kotak Mahindra Bank</option>
	    
	     
	     		<option value="Lakshmi Vilas Bank">Lakshmi Vilas Bank</option>
	    
	     
	     		<option value="Oriental Bank of Commerce">Oriental Bank of Commerce</option>
	    
	     
	     		<option value="PNB">PNB</option>
	    
	     
	     		<option value="PNB Corporate NetBanking">PNB Corporate NetBanking</option>
	    
	     
	     		<option value="Punjab and Maharashtra Bank">Punjab and Maharashtra Bank</option>
	    
	     
	     		<option value="Punjab and Sind Bank">Punjab and Sind Bank</option>
	    
	     
	     		<option value="Ratnakar Bank">Ratnakar Bank</option>
	    
	     
	     		<option value="Royal Bank of Scotland">Royal Bank of Scotland</option>
	    
	     
	     		<option value="SBI">SBI</option>
	    
	     
	     		<option value="Saraswat Bank">Saraswat Bank</option>
	    
	     
	     		<option value="Shamrao Vitthal Co-operative Bank">Shamrao Vitthal Co-operative Bank</option>
	    
	     
	     		<option value="South Indian Bank">South Indian Bank</option>
	    
	     
	     		<option value="Standard Chartered Bank">Standard Chartered Bank</option>
	    
	     
	     		<option value="State Bank of Bikaner and Jaipur">State Bank of Bikaner and Jaipur</option>
	    
	     
	     		<option value="State Bank of Hyderabad">State Bank of Hyderabad</option>
	    
	     
	     		<option value="State Bank of India Debit Card">State Bank of India Debit Card</option>
	    
	     
	     		<option value="State Bank of MYSORE">State Bank of MYSORE</option>
	    
	     
	     		<option value="State Bank of Patiala">State Bank of Patiala</option>
	    
	     
	     		<option value="State Bank of Travancore">State Bank of Travancore</option>
	    
	     
	     		<option value="Syndicate Bank">Syndicate Bank</option>
	    
	     
	     		<option value="Tamilnad Mercantile Bank">Tamilnad Mercantile Bank</option>
	    
	     
	     		<option value="Tamilnadu State Coop Bank">Tamilnadu State Coop Bank</option>
	    
	     
	     		<option value="Union Bank Of India">Union Bank Of India</option>
	    
	     
	     		<option value="United Bank of India">United Bank of India</option>
	    
	     
	     		<option value="United Commercial Bank">United Commercial Bank</option>
	    
	     
	     		<option value="Vijaya Bank">Vijaya Bank</option>
	    
	     
	     		<option value="YES Bank">YES Bank</option>
	     		</select>
		    
		    </td>
											</tr>
										    <tr>
												<td align="left">Card Number:</td>
												<td align="left"><input type="text" id="enterpin" name="enterpin"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Expiry Date:</td>
												<td align="left"><input type="text" id="expirydate" name="expirydate"
													size="30" readonly onclick="scwShow(this,event);" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Amount:</td>
												<td align="left">
													<select name="amount" id="amount">
														<option>4000</option>
														
													</select>
													
												</td>
											</tr>
											
										</table>
										
										
										<br />
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
