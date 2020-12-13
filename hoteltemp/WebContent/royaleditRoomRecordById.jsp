<%@page import="com.model.RoyalRoomData"%>
<%@page import="java.sql.*"%>
 <%@ include
								file="headerroyal.jsp"%> 

<%
	String roomno = request.getParameter("roomno");
	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hoteldatabase", "root", "");
	//Creating statement to execute query
	String sql = "select * from royaltotalroom_tbl where roomno=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	pstmt.setString(1, roomno);
	//executing the query to the database
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
                  RoyalRoomData data = new RoyalRoomData(rs.getString(1),
          				rs.getString(2), rs.getString(3),rs.getString(4));
		request.setAttribute("roomData",data);
	}
%>

<jsp:forward page="royaleditRoom.jsp" />