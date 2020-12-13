package com.admin.subjects;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.database.Dao;

public class SubjectAction
{
  private SubjectBean bean;
  private Connection connection;
  private PreparedStatement prepare;
  private ResultSet resultset;
  private boolean flag;
  private int result;
  
  private String insertQuery="insert into subjects values(?,?,?,?,?,?,?)";
 // private String matchQuery="select * from subject where code=?";
  
  public SubjectAction(SubjectBean bean)
  {
	  this.bean=bean;
	  connection=Dao.getConnect();
	  System.out.println("Connection created...");
  }
  
  public boolean insert()
  {
	  try
	  {
		 prepare=connection.prepareStatement(insertQuery);
		 prepare.setString(1, bean.getSubject());
		 prepare.setString(2, bean.getCode());
		 prepare.setString(3, bean.getCourse());
		 prepare.setString(4, bean.getPaperid());
		 
		 prepare.setString(5, bean.getSemester());
		 prepare.setString(6, bean.getMaxmarks());
		 prepare.setString(7, bean.getMinmarks());
		 
		result= prepare.executeUpdate();
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
