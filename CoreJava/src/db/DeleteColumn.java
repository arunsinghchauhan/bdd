package db;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class DeleteColumn{
	  public static void main(String[] args) {
	  Connection con = null;
	  try{
	  Class.forName("com.mysql.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hiet_db","root","root");
	  Statement st = con.createStatement();
	  Scanner scanner = new Scanner(System.in);
	  System.out.println("Enter table name: ");
	  String table = scanner.next();
	  System.out.println("Enter column name: ");
	  String col = scanner.next();
	  st.executeUpdate("ALTER TABLE "+table+" DROP "+col);
	  System.out.println("Column is deleted successfully!");
	  }
	  catch (Exception s){
		  	System.out.println("Table or column is not found!");
	  }
	}
}
