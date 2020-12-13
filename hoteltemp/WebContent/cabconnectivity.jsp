
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

String cname;


String email;
String phone;
String address;


String from;
String to;
String passenger;
String date;
String hour;
String min;
String period;
String choosebank;
String enterpin;
String expirydate;
String amount;

String sno=request.getParameter("sno");

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
				if (name.equals("cname")) {
					cname = item.getString();
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
				
				
				 else if (name.equals("from")) {
						from = item.getString();
					} 
				 else if (name.equals("to")) {
						to = item.getString();
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
				 else if (name.equals("min")) {
					   min = item.getString();
					} 
				 else if (name.equals("period")) {
					 period = item.getString();
					} 
				 else if (name.equals("choosebank")) {
					 choosebank = item.getString();
					} 
				 else if (name.equals("enterpin")) {
					 enterpin = item.getString();
					} 
				 else if (name.equals("expirydate")) {
					 expirydate = item.getString();
					} 
				 else if (name.equals("amount")) {
					 amount = item.getString();
					} 
				 
			}	
    	}
    		
    }
    //write your query here
    //loading the driver
    try {
Class.forName("com.mysql.jdbc.Driver");
//Connection points to the database
Connection connection=DriverManager.
		getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
//Creating statement to execute query
String sql="insert into cab1_tbl values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt=connection.prepareStatement(sql);
    
//setting the values into the query
pstmt.setString(1, cname);


pstmt.setString(2,email);
pstmt.setInt(3,Integer.parseInt(phone));
pstmt.setString(4,address);	        


pstmt.setString(5,from);
pstmt.setString(6,to);

pstmt.setString(7,passenger);
pstmt.setString(8,date);
pstmt.setString(9,hour);
pstmt.setString(10,min);
pstmt.setString(11,period);
pstmt.setString(12,choosebank);
pstmt.setString(13,enterpin);
pstmt.setString(14,expirydate);
pstmt.setString(15,amount);

int p=pstmt.executeUpdate();
pstmt=connection.prepareStatement("update cabavailable_tbl set available='No' where sno="+sno);
pstmt.executeUpdate();
    } catch (Exception e) {
		e.printStackTrace();
	}


%>
<jsp:forward page="citytour.jsp"/>







