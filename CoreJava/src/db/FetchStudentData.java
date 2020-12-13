package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FetchStudentData {
	public static void main(String[] args) {
		try{
			//loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			//Connection points to the database
			Connection connection=DriverManager.
					getConnection("jdbc:mysql://localhost:3306/corejavadb","root","");
			//Creating statement to execute query
			String sql="select * from students_tbl";
			PreparedStatement pstmt=connection.prepareStatement(sql);
            //setting the values into the query
          //executing the query to the database
           ResultSet kuchbhi=pstmt.executeQuery();
          while(kuchbhi.next()){
        	  String studentId=kuchbhi.getString(1);
        	  String firstName=kuchbhi.getString(2);
        	  String lastName=kuchbhi.getString(3);
        	  String email=kuchbhi.getString(4);
        	  String mobile=kuchbhi.getString(5);
        	  String branch=kuchbhi.getString(6);
        	  String collegeName=kuchbhi.getString(7);
        	  Integer password=kuchbhi.getInt(8);

        	  //System.out.print(studentId  +" =  "+studentId+" , ");
        	 // System.out.print(firstName +" =  "+firstName+" , ");
        	  //System.out.print(lastName +" =  "+lastName+" , ");
        	 // System.out.print(email +" =  "+email+" , ");
        	  //System.out.print(mobile +" =  "+mobile+" , ");
        	  //System.out.print(branch +" =  "+branch+" , ");
        	  //System.out.println(collegeName +" =  "+collegeName);
        	 // System.out.println("++++++++++++++++++++++++");
        	  System.out.println("studentid will be:"+studentId);
        	  System.out.println("first name will be:"+firstName);
        	  System.out.println("last name will be:"+lastName);
        	  System.out.println("email will be:"+email);
        	  System.out.println("mobile will be:"+mobile);
        	  System.out.println("branch will be:"+branch);
        	  System.out.println("college name will be:"+collegeName);
        	  System.out.println("password will be:"+password);

         	  System.out.println("++++++++++++++++++++++++");

        	  
          }
		}catch(Exception  exception){
			exception.printStackTrace();
			System.out.println("Data is fetched sucessfully!");

		}
	}
}
