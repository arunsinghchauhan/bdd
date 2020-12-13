package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
public class Updatestudent {
	
	public static void main(String[] args) {
			Scanner scanner= new Scanner(System.in);
			
			System.out.println("ENTER EMAIL ID:");
			String email=scanner.next();
			System.out.println("ENTER MOBILE NUMBER:");
			String mobile=scanner.next();
			System.out.println("ENTER studentid:");
			String studentid=scanner.next();
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
			String sql="update student_tbl set email=?, mobile=? where studentid=?";
			PreparedStatement psmt=connection.prepareStatement(sql);
			
			psmt.setString(1,email);
			psmt.setString(2,mobile);
			psmt.setString(3,studentid);
			
			int p=psmt.executeUpdate();
			System.out.println("data is inserted");
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			
		}

		
	}

