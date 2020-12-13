<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Electronics</title>
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
    
    
     <%

        Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "ankur");
  Statement st=con.createStatement();
             
                ResultSet rs=st.executeQuery("select * from PRODUCT_LIST where CATEGORY='electronics'");

       // String path=application.getRealPath("ppt+")+"\\"+ss;
String s1=null, name=null, artist=null, des=null, cat=null, dorec=null;
double price=0, id=0, qua=0;

while(rs.next())
       {
                    
   id=rs.getInt(1);
s1=rs.getString(8);
des=rs.getString(3);
name=rs.getString(2);
cat=rs.getString(6);
dorec=rs.getString(7);
qua=rs.getInt(5);
price=rs.getDouble(4);
               
%> <form method="POST" action="CartController">
<table border="0">
<tr>
	<td><img src="image.jsp?val=<%=s1%>" alt="" width="210" height="139" class="project-img" /></td>
	<td>
		<h2><%= name%><input type="hidden" name="modelNo" value='<%= name%>'/></h2>
      <p> <%= des %><input type="hidden" name="description" value='<%=des%>'/></p>
       <h5 style="color: red">
           Price: Rs.<%= price%><input type="hidden" name="price" value='<%=price%>'/></h5>
           Quantity:<input type="text" size="2" value="1" name="quantity"/>
           <input type="hidden" name="action" value="add"><input type="submit" name="addToCart" value="Add To Cart"/>
		
	</td>
	
</tr>                   
                           
           </table>  </form>
                    <%

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
  </div><br>
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