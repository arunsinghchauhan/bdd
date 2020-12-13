<%@page import="java.io.IOException"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.io.IOUtils"%>
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
String photoName;

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
    		 String fileName=item.getName();
    		 int index=fileName.lastIndexOf("\\");
    		 photoName=fileName.substring(index+1);
    		System.out.println("________________________"+photoName);
    	}
    		
    }
    

  ///write logic to persist image into the server's directory
  //and persist url of the image into the database
  StringBuilder assignedUrl=new StringBuilder("http://");
  		assignedUrl.append(request.getServerName()+":");
  		assignedUrl.append(request.getServerPort());
  		assignedUrl.append(request.getContextPath()+"/images"+"/");
  		assignedUrl.append(photoName);
  		String assignUrl=assignedUrl.toString();
  		//I need array of byte from inputStream
	byte[] bytes = IOUtils.toByteArray(inputStream);
  	//Writting image into the server folder which images
  	 String afileName=request.getSession().getServletContext().getRealPath("/images/"+photoName);
 	FileOutputStream fos=null;    
 	BufferedOutputStream	bos=null;
  	 try {
     	File fileName=new File(afileName);
     	 fos= new FileOutputStream(fileName);
     		bos = new BufferedOutputStream(fos);
     	bos.write(bytes);
     }catch (Exception e) {
	       e.printStackTrace();
     }  finally{
     	if(bos!=null){
    		try {
				bos.flush();
				bos.close();
				if(fos!=null)
				fos.close();
    		} catch (IOException e) {
				e.printStackTrace();
			}
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
pstmt.setString(14,assignUrl);
int p=pstmt.executeUpdate();

//accessing the name of the image





%>
<jsp:forward page="showStudents.jsp"/>






