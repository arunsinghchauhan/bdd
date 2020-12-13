package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class InsertEmpId {

	public static void main(String[] args) {
		
	Scanner scanner=new Scanner(System.in);
	System.out.println("ENTER YOUR ID:");
	int employeeid =scanner.nextInt();
	System.out.println("ENTER YOUR SSN NUMBER:");
	int ssnnumber=scanner.nextInt();
	System.out.println("ENTER YOUR NAME:");
	String name=scanner.next();
	System.out.println("ENTER YOUR ADDRESS:");
	String address=scanner.next();

	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
	String sql="insert into emptable values(?,?,?,?)";
	PreparedStatement psmt=connection.prepareStatement(sql);
	psmt.setInt(1,employeeid);
	psmt.setInt(2,ssnnumber);
	psmt.setString(3,name);
	psmt.setString(4,address);
	
	int p=psmt.executeUpdate();
	System.out.println("data is inserted");
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	
}



	}


