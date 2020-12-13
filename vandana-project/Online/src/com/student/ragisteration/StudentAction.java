package com.student.ragisteration;

import java.sql.*;


import com.database.Dao;

public class StudentAction
{

	private StudentBean bean;
	 private RandomPassword random;
	   private Connection connection;
	   private PreparedStatement prepare;
	   private int result;
	   private boolean flag;
	   private String password;
	   private ResultSet resultset;
	   private String insertQuery="insert into adm values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	   private String searchQuery="select Max(regid) from adm where course=(?)";
	   
	   public StudentAction(StudentBean bean)
	   {   
		   this.bean=bean;
		   random=new RandomPassword();
		   
		   connection= Dao.getConnect();
		   System.out.println("connection Created.........");
	   }
	   public StudentBean getBean()
	   {
		   return bean;
	   }
	  
	   
	   public boolean insert()
	   {
		   
		   try
		   {   
			  password=random.getPassword();
			  
			  prepare=connection.prepareStatement(insertQuery);
			  Integer test=0;
			  prepare.setInt(1,test);
			  prepare.setString(2, bean.getFirstname());
			  prepare.setString(3, bean.getLastname());
			  prepare.setString(4, bean.getFathersname());
			  prepare.setString(5, bean.getEmail());
			 
			  prepare.setString(6, bean.getContact());
			  prepare.setString(7, bean.getCourse());
			  prepare.setString(8, bean.getQualification());
			  prepare.setString(9, password);
			  prepare.setString(10, bean.getGender());
			  prepare.setString(11, bean.getAddress());
			  prepare.setString(12, bean.getCity());
			  prepare.setString(13, bean.getState());
			  prepare.setString(14, bean.getDob());
			  prepare.setString(15, bean.getBatch());
			 
			  
			  
			  result=prepare.executeUpdate();
			  
			  if(result==1)
			  {
				  prepare=connection.prepareStatement(searchQuery);
				  prepare.setString(1,bean.getCourse());
				  resultset=prepare.executeQuery();
				  
				  if(resultset.next())
				  {
					bean.setRegid(resultset.getInt(1));
					bean.setPassword(password);
					
					flag=true;
				  }
				  else
				  {
					  flag=false;
				  }
				 
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
