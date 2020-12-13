package com.database;

import java.sql.*;

public class Dao
{
   private static String driverClass="com.mysql.jdbc.Driver";
   private static String url="jdbc:mysql://localhost:3306/";
   private static String database="education";
   private static String user="root";
   private static String password="root";
   private static Connection connection;
   
   public static Connection getConnect()
   {
	   try
	   {
	     Class.forName(driverClass);
	     connection=DriverManager.getConnection(url+database,user,password);
	     
	    }
	   catch(Exception exception)
	   {
		   exception.printStackTrace();
	   }
	   
	   return connection;
   }
   
}
