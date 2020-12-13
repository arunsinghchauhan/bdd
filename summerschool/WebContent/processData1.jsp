

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
String libid;
String firstName;
String middleName;
String lastName;
String dob;
String doa;
String email;
String phone;
String address;
String fatherName;;
String pin;
String branch;
InputStream inputStream;

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
				if (name.equals("libid")) {
					libid = item.getString();
				} 
				else if (name.equals("firstName")) {
					firstName =  item.getString();
				} else if (name.equals("middleName")) {
					middleName = item.getString();
				} else if (name.equals("lastName")) {
					lastName = item.getString();
				} else if (name.equals("dob")) {
					dob = item.getString();
				}
				else if (name.equals("doa")) {
					doa = item.getString();
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
				else if (name.equals("fatherName")) {
					fatherName = item.getString();
				} else if (name.equals("pin")) {
					pin = item.getString();
				} 
				else if (name.equals("branch")) {
					branch = item.getString();
				}
			}	
    	}else{
    		 inputStream = item.getInputStream();
    	}
    		
    }
    //write your query here
    //loading the driver
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
//Creating statement to execute query
String sql="insert into student_registration_tbl values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
    
//setting the values into the query
pstmt.setString(1, libid);
pstmt.setString(2,firstName);
pstmt.setString(3, middleName);
pstmt.setString(4, lastName);
pstmt.setString(5, dob);
pstmt.setString(6, doa);
pstmt.setString(7,email);
pstmt.setString(8,phone);
pstmt.setString(9,address);
pstmt.setString(10,fatherName);
pstmt.setString(11,pin);
pstmt.setString(12,branch);
pstmt.setBinaryStream(13, inputStream,
									inputStream.available());
pstmt.setString(14,email);

int p=pstmt.executeUpdate();
%>
<jsp:forward page="showStudents.jsp"/>






