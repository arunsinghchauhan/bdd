<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
  <form action="order.jsp" method="post">
      <center>
          <input type="submit" value="Place Order"/>
      </center>
  </form>
</body>
</html>