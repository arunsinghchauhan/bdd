<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Order</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style/style.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
<link href="style/style-ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>

<body>

        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <center>
  <div class="wrapper">
    <div class="logo"> Shop<strong>Online</strong></div>
    <div class="menu">
      <ul class="solidblockmenu">
        <li><a href="set.jsp">Setting</a></li>
        <li><a href="pro.jsp">Products</a></li>
        <li><a href="Logout.jsp">Logout</a></li>
        <li><a href="Help.jsp">Help</a></li>
        <li><a href="FAQ.jsp">FAQ's</a></li>
        <li><a href="Evoucher.jsp">e-Gift Voucher</a></li>
      </ul>
      <div class="clear"></div>
    </div>
  </div>
  <div class="search">
    <div class="search-text"> Search the world of shopping!&nbsp;
      <input type="text" size="40" />
      &nbsp;&nbsp;</div>
    <div style="float:left; margin-left:5px; margin-top:10px;">
      <input type="image" src="images/search.jpg" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome: <%=session.getAttribute("username") %>
    </div>
  </div>
  <div class="hot-search">
    <div class="hot-search-text"> Hot Searches: Apple iPod Nano, Hugo Boss Clothing, HD DVD Player, DSLR Camera, Toshiba 32&quot; LCD TV, Unsecured Loans, Excersise Machines..</div>
  </div>
  <div class="body-wrapper">
  
      
   
    <div class="body-middle">
    
<%
double amt=0.0;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ankur");
	String fname=null, add=null, lname=null, state=null, country=null;
			String sql="select FIRSTNAME,LASTNAME,ADDRESS,STATE,COUNTRY from USERNAME where USERNAME='"+session.getAttribute("username")+"'";
			
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			
			while(rs.next())
			{
				 fname=rs.getString(1);
				 add=rs.getString(3);
				 lname=rs.getString(2);
				 state=rs.getString(4);
				 country=rs.getString(5);
							}
		Statement st1=con.createStatement();
		String sql1="select VOUCHER_AMOUNT from GIFT where RECEIVER_USER_NAME='"+session.getAttribute("username")+"'";
		ResultSet rs1=st1.executeQuery(sql1);
		if(rs1.next()){
			amt=rs1.getDouble(1);
		}
			%>
<jsp:useBean id="cart" scope="session" class="beans.CartBean" />
<br><br><form action="payment.jsp"><table width="472" height="400" border="5" align="center">
  <tr>
    <td width="136"><strong>Name</strong></td>
    <td colspan="2"> <%=fname %>  <%=lname %></td>
  </tr>
  <tr>
    <td><strong>Address</strong></td>
    <td colspan="2"><%=add %>,<%=state %>,<%=country %></td>
  </tr>
  <tr>
    <td><strong>Product Name </strong></td>
    <td><strong>Quantity</strong></td>
    <td><strong>Price</strong></td>
  </tr>
  <tr>
    <td>
    <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
    
    <c:out value="${cartItem.partNumber}"/>
    <br></br><br>
    </c:forEach>
    
    </td>
    <td align="center" ><c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
    
    <c:out  value="${cartItem.quantity }" />
    <br></br><br>
    </c:forEach></td>
    <td ><c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
    
    <c:out value="${cartItem.totalCost}"/>
    <br></br><br>
    </c:forEach></td>
  </tr>
  <tr>
    <td><strong>Total Amount </strong></td>
    <td colspan="2"><c:out value="${cart.orderTotal}"/></td>
  </tr>
  <tr><td>e-Gift Amount: </td><td><%=amt %></td></tr><%double total=cart.getOrderTotal(); %> 
  <tr><td>Net Amount to pay: </td><td><input type="hidden" name="amt" value="<%=total-amt %>"><%=total-amt %></td>
  
</table><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Pay Now">
</form>
</div>
<div class="body-left">
      <div class="left-main-title"> Shopping Categories</div>
      <div class="left-topic-title" style="padding-top:30px;"><a href="electronics1.jsp"> Electronics</a></div>
      <div class="left-topic-desc"> Laptop&#8217;s, TV, Mobiles,Tablets &amp; more..</div>
      <div class="left-topic-title" style="padding-top:20px;"><a href="jewellery1.jsp"> Jewellery</a></div>
      <div class="left-topic-desc"> Necklace, Bangles, Earrings  &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"><a href="book1.jsp"> Books </a></div>
      <div class="left-topic-desc"> Fiction, Non-Fiction, Education, Stationary &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"><a href="gaming1.jsp"> Gaming</a></div>
      <div class="left-topic-desc"> Action, Racing, Sports &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> <a href="Sports1.jsp"> Sports &amp; Fitness</a></div>
      <div class="left-topic-desc"> Cricket, Football, Treadmill, Massager &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"><a href="Clothing1.jsp"> Clothing</a></div>
      <div class="left-topic-desc"> Men, Women, Kids, &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> <a href="Footwear1.jsp">Footwear</a></div>
      <div class="left-topic-desc"> Casual, Formal, Sports &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> <a href="Kitchen1.jsp">Home &amp; Kitchen</a></div>
      <div class="left-topic-desc"> Dinner set, Home decor, &amp; more..</div>
  </div></div>
 
  <div class="separator-main"> &nbsp;</div>
  <div class="footer">
    <center><div class="footer-text" style="padding-top:10px;margin-left:20px;"> <a href="index.jsp" class="nav1">Home</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Register.jsp" class="nav1">Registration</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Login.jsp" class="nav1">Login</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Help.jsp" class="nav1">Help</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="FAQ.jsp" class="nav1">FAQ's</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Contact.jsp" class="nav1">Contact</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Policy.jsp" class="nav1">Privacy Policy</a></div>
    <div class="footer-text" style="padding-top:20px;margin-left:20px;"> Copyright &copy; 2003-2008 <a href="index.jsp">www.ShopOnline.com.</a> All Rights Reserved.
    </div>
    </center>
  </div>
</center>
</body>
</html>