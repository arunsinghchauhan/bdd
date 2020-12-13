<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
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
  			<h2 style="color: #2C76C3;">Payment Details</h2>
  			<% HttpSession s=request.getSession(false);
  			if(s!=null){
  				String s1=(String)s.getAttribute("username");
  				if(s1!=null){
  					out.println("Welcome"+s1);
  					String amtt=request.getParameter("amt");
  					
  					Class.forName("oracle.jdbc.driver.OracleDriver");
  					Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ankur");
  					String fname=null, add=null, lname=null, state=null, country=null;
  							String sql="select BANKNAME from NETBANKING";
  							
  							Statement st=con.createStatement();
  							
  							ResultSet rs=st.executeQuery(sql);
  							
  					%>
  					<form action="pay.jsp" method="post">
  					<table>
  					<tr><td>Bank Name: </td><td><select name="bank">
			<%
			while(rs.next())
				{
				String name=rs.getString(1);
				
				 %>
				 <option value="<%=name %>">
				 <%= name %></option>
				 <% }
			%>
			</select>
  					<tr><td>Card ID: </td><td><input type="text" name="cardid"></td></tr>
  					<tr><td>Password: </td><td><input type="text" name="pass"><input type="hidden" name="amt" value="<%=amtt%>"></td></tr>
  					<tr><td><input type="submit" value="Pay"></td></tr>
  					</table>
  					
  					</form>
  					<%
  				}
  				
  			}else
  			{
  				
  			}
  			%>
  			
  			
  			
  			
      
   
    <div class="body-middle">
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
	</div>
	</center>
</body>
</html>