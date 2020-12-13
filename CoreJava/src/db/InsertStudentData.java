package db;

import java.sql.*;
import java.util.Scanner;

public class InsertStudentData {
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		//Taking input from the keyboard
		System.out.println("Enter studentid");
		String studentId=scanner.next();
		System.out.println("Enter firstName");
		String firstName=scanner.next();
		System.out.println("Enter lastName");
		String lastName=scanner.next();
		System.out.println("Enter email");
		String email=scanner.next();
		System.out.println("Enter mobile");
		String mobile=scanner.next();
		System.out.println("Enter branch");
		String branch=scanner.next();
		System.out.println("Enter college name");
		String collegeName=scanner.next();
		System.out.println("Enter password ");
		String password=scanner.next();
		
		
		try{
			//loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Connection points to the database
			Connection connection=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/database1","root","");
			//Creating statement to execute query
			String sql="insert into students_tbl values(?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt=connection.prepareStatement(sql);
            //setting the values into the query
		   pstmt.setString(1, studentId);
           pstmt.setString(2, firstName);
           pstmt.setString(3, lastName);
           pstmt.setString(4, email);
           pstmt.setString(5, mobile);
           pstmt.setString(6, branch);
           pstmt.setString(7, collegeName);
           pstmt.setString(8, password);
           
			//executing the query to the database
           int p=pstmt.executeUpdate();
           
           System.out.println("Data is inserted sucessfully!");
           //System.exit(0);
		}catch(Exception  exception){
			exception.printStackTrace();
		}
	}
}
