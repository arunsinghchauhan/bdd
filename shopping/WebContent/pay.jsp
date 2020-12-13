<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Evoucher</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style/style.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
<link href="style/style-ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body>
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
    
    <% String amt=request.getParameter("amt");
    Double amtt=Double.parseDouble(amt);
    String id=request.getParameter("cardid");
    String pass=request.getParameter("pass");
    String bank=request.getParameter("bank");
    System.out.println(id);System.out.println(pass);System.out.println(bank);
    Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ankur");
	Statement st=con.createStatement();
	String sql="select * from NETBANKING";
	ResultSet rs=st.executeQuery(sql);
	boolean b=false;
	while(rs.next())
	{
		if(id.equals(rs.getString(1))&&pass.equals(rs.getString(2))&&bank.equals(rs.getString(3)))
		{
			b=true;
			break;
		}
	}
	if(b){
		Statement st1=con.createStatement();
		String sql2="update USERNAME set AMOUNT=AMOUNT-"+amtt+" where USERNAME='"+session.getAttribute("username")+"'";
		int x=st1.executeUpdate(sql2);
		if(x>0){
			System.out.println("Success");
			
			%>
			<h1 style="color: #2C76C3;">&nbsp;&nbsp;Thank you for your order!</h1>
		    <p><big>Your order has been placed and is being processed.</big></p>
		    <table >
		    <tr><td>Order ID:</td><td><%=session.getAttribute("cod") %></td></tr></table>
		    <br><br><table width="472" height="200" border="3" align="center" bordercolor="#2C76C3;"> <tr>
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
		  <tr><%String s=(String)request.getAttribute("amt");
		  
		  %>
		    <td><strong>You Payed </strong></td>
		    <td colspan="2"><%=amtt%></td>
		  </tr>
		    </table>
		    <%
		}
	}
	 %>
    
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
    </div>
    </div><br><br>
  <div class="separator-main"> &nbsp;</div>
  <div class="footer"><br><br>
    <center><div class="footer-text" style="padding-top:10px;margin-left:20px;"> <a href="set.jsp" class="nav1">Settings</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="pro.jsp" class="nav1">Products</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Logout.jsp" class="nav1">Logout</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Help.jsp" class="nav1">Help</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="FAQ.jsp" class="nav1">FAQ's</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Contact.jsp" class="nav1">Contact</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Policy.jsp" class="nav1">Privacy Policy</a></div>
    <div class="footer-text" style="padding-top:20px;margin-left:20px;"> Copyright &copy; 2003-2008 <a href="index.jsp">www.ShopOnline.com.</a> All Rights Reserved.
    </div>
    </center>
  </div>
</center>
</body>
</html>
    