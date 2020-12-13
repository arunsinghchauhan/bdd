package com.forget.password;
import java.sql.*;

import com.database.Dao;

public class ForgetAction 
{
  private ForgetBean bean;
  private Connection connection;
  private PreparedStatement prepare;
  private ResultSet resultset;
  private int result;
  private boolean flag;
  
  private String checkQuery="select * from studentpersonalinfo where regid=?";
  
  private String updateQuery="";
  
  public ForgetAction(ForgetBean bean)
  {
	  this.bean=bean;
	  connection=Dao.getConnect();
	  System.out.println("Connection Created......");
  }
  
  public boolean check()
  {
	  try
	  {
		  prepare=connection.prepareStatement(checkQuery);
		  prepare.setInt(1, bean.getRegid());
		  resultset= prepare.executeQuery();
		  if(resultset.next())
		  {
			 
		  }
		 
		  
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	  return flag;
  }
  
  
}
