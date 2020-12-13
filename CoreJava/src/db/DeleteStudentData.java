package db;

import java.sql.*;
import java.util.Scanner;

public class DeleteStudentData {
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		//Taking input from the keyboard
		System.out.println("Enter studentid:");
		String studentId=scanner.next();
		try{
			//loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Connection points to the database
			Connection connection=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/corejavadb","root","");
			//Creating statement to execute query
			String sql="delete from students_tbl where 'studentId'=?";
			PreparedStatement pstmt=connection.prepareStatement(sql);
            //setting the values into the query
	       pstmt.setString(1, studentId);
          //executing the query to the database
           int p=pstmt.executeUpdate();
           System.out.println("Data is deleted sucessfully!");
		}catch(Exception  exception){
			exception.printStackTrace();
		}
	}
}
