package tv;

	import java.sql.*;
	import java.io.*;

	public class Inserimage {
	public static void main(String[] args) {
	try{
	Class.forName("com.mysql.jdbc.driver.");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/corejavadb","root","");
				
	PreparedStatement ps=con.prepareStatement("insert into emp values(?,?)");
			
	FileInputStream fin=new FileInputStream("C:\\cmc\\a.jpg");
			
	ps.setString(1,"cmc noida");
	ps.setBinaryStream(2,fin,fin.available());
	int i=ps.executeUpdate();
	System.out.println(i+" inserted successfully");
			
	con.close();
				
	}catch (Exception e) {e.printStackTrace();}
	}
	}


