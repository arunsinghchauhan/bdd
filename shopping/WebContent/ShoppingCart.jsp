

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CART_Page</title>
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
    <center>
        <p><font face="Verdana, Arial, Helvetica, sans-serif"><h1><strong>Shopping Cart</strong></h1></font></p></center>
<p></p>
<form name="item" method="POST" action="CartController">
<table width="75%" border="1" align="center">
  <tr bgcolor="#CCCCCC">
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">NAME
      DESCRIPTION</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">QUANTITY</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">UNIT
      Price</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">TOTAL</font></strong></td>
  </tr>
  <jsp:useBean id="cart" scope="session" class="beans.CartBean" />
  <c:if test="${cart.lineItemCount==0}">
  <tr>
      <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -</td>
  </tr>
  </c:if>
  
  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  
  <tr>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.partNumber}"/></b><br/>
      <c:out value="${cartItem.modelDescription}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'><input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'> <input type="submit" name="action" value="Update">
 <br/>         <input type="submit" name="action" value="Delete"></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rs. <c:out value="${cartItem.unitCost}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rs. <c:out value="${cartItem.totalCost}"/></font></td>
  </tr>
  
  </c:forEach>
  <tr>
    <td colspan="2"> </td>
    <td> </td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: Rs.<c:out value="${cart.orderTotal}"/></font></td>
  </tr>
</table>
  </form>
  <form action="order1.jsp" method="post">
      <center>
          <input type="submit" value="Place Order"/>
      </center>
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
  </div>
 
  <div class="separator-main"> &nbsp;</div>
  <div class="footer"><br><br><br><br>
    <center><div class="footer-text" style="padding-top:10px;margin-left:20px;"> <a href="index.jsp" class="nav1">Home</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Register.jsp" class="nav1">Registration</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Login.jsp" class="nav1">Login</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Help.jsp" class="nav1">Help</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="FAQ.jsp" class="nav1">FAQ's</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Contact.jsp" class="nav1">Contact</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Policy.jsp" class="nav1">Privacy Policy</a></div>
    <div class="footer-text" style="padding-top:20px;margin-left:20px;"> Copyright &copy; 2003-2008 <a href="index.jsp">www.ShopOnline.com.</a> All Rights Reserved.
    </div>
    </center>
  </div>
</center>z
</body>
</html>
