

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
String feedback;

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
				if (name.equals("feedback")) {
					feedback = item.getString();
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
String sql="insert into feedback_tbl values(?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
    
//setting the values into the query
pstmt.setString(1, feedback);


int p=pstmt.executeUpdate();
%>
<jsp:forward page="testimonials.jsp"/>






