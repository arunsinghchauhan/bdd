package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
public class DeleteStudentData {
	
	public static void main(String[] args) {
		Scanner scanner= new Scanner(System.in);
		System.out.println("ENTER STUDENT ID:");
		String studentid=scanner.next();
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hiet_db","root","");
		String sql="delete from student_tbl where studentid=?";
		PreparedStatement psmt=connection.prepareStatement(sql);
		psmt.setString(1,studentid);
	
		int p=psmt.executeUpdate();
		System.out.println("data is deleted");
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
	}

	
}
