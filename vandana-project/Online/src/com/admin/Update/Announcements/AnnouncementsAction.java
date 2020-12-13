package com.admin.Update.Announcements;

import java.sql.Connection;
import java.sql.PreparedStatement;


import com.database.Dao;

public class AnnouncementsAction 
{
  private AnnouncementsBean bean;
  private Connection connection;
  private PreparedStatement prepare;
 // private ResultSet resultset;
   private int result;
  private boolean flag;
  
  private String insertQuery="insert into updates values(?,?,?)";
  private String deleteQuery="delete from updates where nid=?";
  public AnnouncementsAction(AnnouncementsBean bean)
  {
	  this.bean=bean;
	  connection=Dao.getConnect();
	  System.out.println("Connection Created.........");
  }
  
  public boolean insert()
  {
	  try
	  {
		  prepare=connection.prepareStatement(insertQuery);
		  prepare.setString(1, bean.getNews());
		  prepare.setString(2, bean.getEventdate());
		  prepare.setString(3, bean.getFile());
		  
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
  
  
  public boolean delete()
  {
	  try
	  {
		 prepare=connection.prepareStatement(deleteQuery) ;   
		 prepare.setString(1, bean.getChoice());
		 
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
