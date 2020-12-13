package com.admin.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.adminbean.Admin;
import com.database.Dao;


public class AdminAction 
{
	private Admin admin;
	private Connection connection;
	private PreparedStatement prepare;
	private ResultSet resultset;
	private boolean flag;
	private int result;
	
    private String insertQuery="insert into admin values(?,?,?,?,?,?,?,?)";
    
    
    public AdminAction(Admin admin)
    {   
 	   this.admin=admin;
 	   connection= Dao.getConnect();
 	   System.out.println("connection Created.........");
    }
    
    public boolean insert()
    {
 	   
 	   try
 	   {   
 		  		  
 		  prepare=connection.prepareStatement(insertQuery);
 		  prepare.setString(1, admin.getUsername());
 		  prepare.setString(2, admin.getPassword());
 		  prepare.setString(3, admin.getFirstname());
 		  prepare.setString(4, admin.getLastname());
 		  prepare.setString(5, admin.getDob());
 		  prepare.setString(6, admin.getAddress());
 		  prepare.setString(7, admin.getEmail());
 		  prepare.setLong(8, admin.getContact());
 		  
 		  result=prepare.executeUpdate();
 		  
 		  
 			 if(result==1)
 			{
 				flag=true;
 			}
 			else
 			{
 				flag=false;
 			}
 		 
 	   }
 	   catch(Exception e)
 	   {
 		   e.printStackTrace();
 	   }
    
	
	 return flag;
   }
}
