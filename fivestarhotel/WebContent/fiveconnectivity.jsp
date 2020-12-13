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
String date;
String month;
String date1;
String month1;
String persons;
String rooms;

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
				if (name.equals("date")) {
					date = item.getString();
				} 
				else if (name.equals("month")) {
					month =  item.getString();
				} else if (name.equals("date1")) {
					date1 = item.getString();
				} else if (name.equals("month1")) {
					month1 = item.getString();
				} else if (name.equals("persons")) {
					persons = item.getString();
				}
				else if (name.equals("rooms")) {
					rooms = item.getString();
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
String sql="insert into five_tbl values(?,?,?,?,?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
    
//setting the values into the query
pstmt.setString(1, date);
pstmt.setString(2,month);
pstmt.setString(3, date1);
pstmt.setString(4, month1);
pstmt.setString(5, persons);
pstmt.setString(6, rooms);

int p=pstmt.executeUpdate();
%>
<jsp:forward page="showreservation.jsp"/>







