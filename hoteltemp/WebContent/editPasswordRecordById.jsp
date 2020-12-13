<%@page import="com.model.PasswordData"%>
<%@page import="java.sql.*"%>
<%
	String password = request.getParameter("password");
	//loading the driver
	Class.forName("com.mysql.jdbc.Driver");
	//Connection points to the database
	Connection connection = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/hoteldatabase", "root", "");
	//Creating statement to execute query
	String sql = "select * from login_tbl where password=?";
	PreparedStatement pstmt = connection.prepareStatement(sql);
	//setting the values into the query
	pstmt.setString(1, password);
	//executing the query to the database
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		PasswordData data = new PasswordData(rs.getString(1),
				rs.getString(2), rs.getString(3));
		request.setAttribute("passData",data);
	}
%>

<jsp:forward page="editPassword.jsp" />