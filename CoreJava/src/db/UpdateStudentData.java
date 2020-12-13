package db;

import java.sql.*;
import java.util.Scanner;

public class UpdateStudentData {
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		//Taking input from the keyboard
		System.out.println("Enter studentid");
		String studentId=scanner.next();
		System.out.println("Enter email");
		String email=scanner.next();
		System.out.println("Enter mobile");
		String mobile=scanner.next();

		try{
			//loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Connection points to the database
			Connection connection=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/corejavadb","root","");
			//Creating statement to execute query
			String sql="update students_tbl set email=?,mobile=? where 'studentId'=?";
			PreparedStatement pstmt=connection.prepareStatement(sql);
            //setting the values into the query
			pstmt.setString(1, email);
           pstmt.setString(2, mobile);
           pstmt.setString(3, studentId);
          //executing the query to the database
           int p=pstmt.executeUpdate();
           System.out.println("Data is updated sucessfully!");
		}catch(Exception  exception){
			exception.printStackTrace();
		}
	}
}
