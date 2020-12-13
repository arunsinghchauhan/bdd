package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
public class InsertStudentData {
	
	public static void main(String[] args) {
		Scanner scanner= new Scanner(System.in);
		System.out.println("ENTER STUDENT ID:");
		String studentid=scanner.next();
		System.out.println("ENTER FIRST NAME :");
		String firstname =scanner.next();
		System.out.println("ENTER LAST NAME:");
		String lastname=scanner.next();
		System.out.println("ENTER EMAIL ID:");
		String email=scanner.next();
		System.out.println("ENTER MOBILE NUMBER:");
		String mobile=scanner.next();
		System.out.println("ENTER BRANCH:");
		String branch=scanner.next();
		System.out.println("ENTER COLLEGE NAME:");
		String collegename=scanner.next();
		System.out.println("ENTER PASSWORD:");
		String password=scanner.next();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
		String sql="insert into student_tbl values(?,?,?,?,?,?,?,?)";
		PreparedStatement psmt=connection.prepareStatement(sql);
		psmt.setString(1,studentid);
		psmt.setString(2,firstname);
		psmt.setString(3,lastname);
		psmt.setString(4,email);
		psmt.setString(5,mobile);
		psmt.setString(6,branch);
		psmt.setString(7,collegename);
		psmt.setString(8,password);
		
		int p=psmt.executeUpdate();
		System.out.println("data is inserted");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	}

	
}
