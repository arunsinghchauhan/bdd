
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.InputStream"%>
<%!
String userid;
String firstName;
String middleName;
String lastName;

String email;
String phone;
String address;

String pin;
String from;
String passenger;
String date;
String hour;
String sec;






%>

<%

// Create a factory for disk-based file items
DiskFileItemFactory factory = new DiskFileItemFactory();
// Create a new file upload handler
ServletFileUpload fileUpload = new ServletFileUpload(factory);
// Parse the request
List items = fileUpload.parseRequest(request);

  Iterator it=items.iterator();
    while(it.hasNext()){
    	FileItem item = (FileItem) it.next();
    	if (item.isFormField()) { // Determines whether or not a
			// FileItem instance represents a
			// simple form field.
			String name = item.getFieldName();
			if (name != null) {
				if (name.equals("userid")) {
					userid = item.getString();
				} 
				else if (name.equals("firstName")) {
					firstName =  item.getString();
				} else if (name.equals("middleName")) {
					middleName = item.getString();
				} else if (name.equals("lastName")) {
					lastName = item.getString();
				} 
				 
				
				else if (name.equals("email")) {
					email = item.getString();
				} 
				else if (name.equals("phone")) {
					phone = item.getString();
				} 
				else if (name.equals("address")) {
					address = item.getString();
				} 
				
				 else if (name.equals("pin")) {
					pin = item.getString();
				} 
				 else if (name.equals("from")) {
						from = item.getString();
					} 
				 else if (name.equals("passenger")) {
						passenger = item.getString();
					}
				 else if (name.equals("date")) {
						date = item.getString();
					} 
				 else if (name.equals("hour")) {
						hour = item.getString();
					} 
				 else if (name.equals("sec")) {
						sec = item.getString();
					} 
				 
			}	
    	}
    		
    }
    //write your query here
    //loading the driver
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
//Creating statement to execute query
String sql="insert into cab1_tbl values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
    
//setting the values into the query
pstmt.setString(1, userid);
pstmt.setString(2,firstName);
pstmt.setString(3, middleName);
pstmt.setString(4, lastName);

pstmt.setString(5,email);
pstmt.setString(6,phone);
pstmt.setString(7,address);

pstmt.setString(8,pin);
pstmt.setString(9,from);
pstmt.setString(10,passenger);
pstmt.setString(11,date);
pstmt.setString(12,hour);
pstmt.setString(13,sec);



int p=pstmt.executeUpdate();


%>
<jsp:forward page="index.jsp"/>







