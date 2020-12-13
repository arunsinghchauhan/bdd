package com.profile.student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.database.Dao;
import com.student.ragisteration.StudentBean;

public class Action 
{
	  private StudentBean bean;
	  private Connection connection;
	  private PreparedStatement prepare;
	  private ResultSet resultset;
	  private int result;
	  private boolean flag;
	  
	  private String updateQuery="update studentpersonalinfo set email=?,contact=?,qualification=?,city=?,state=?,securityquestion=?,answer=?,address=? where regid=?";
	  private String selectQuery="select * from studentpersonalinfo where regid=?";
	  
	  public Action(StudentBean bean)
	  {
		  this.bean=bean;
		  connection=Dao.getConnect();
		  System.out.println("Connection Created.......");
	  }
	  
	  public StudentBean getBean()
	  {
		  return bean;
	  }
	  
	  
	  public boolean update()
	  {
		  try
		  {
			  prepare=connection.prepareStatement(updateQuery);
			  prepare.setString(1, bean.getEmail());
			  prepare.setString(2, bean.getContact());
			  prepare.setString(3, bean.getQualification());
			  prepare.setString(4, bean.getCity());
			  prepare.setString(5, bean.getState());
			  prepare.setString(6, bean.getSecurityquestion());
			  prepare.setString(7, bean.getAnswer());
			  prepare.setString(8, bean.getAddress());
			  prepare.setInt(9, bean.getRegid());
			  
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
	  
	  
	  
	  public StudentBean select()
	  {
		  try
		  {
			  prepare=connection.prepareStatement(selectQuery);
			  prepare.setInt(1, bean.getRegid());
			  resultset=prepare.executeQuery();
			  
			  if(resultset.next())
			  {
				bean.setRegid(resultset.getInt(1));
				bean.setFirstname(resultset.getString(2));
				bean.setLastname(resultset.getString(3));
				bean.setFathersname(resultset.getString(4));
				bean.setEmail(resultset.getString(5));
				bean.setContact(resultset.getString(6));
				bean.setCourse(resultset.getString(7));
				bean.setQualification(resultset.getString(8));
				bean.setGender(resultset.getString(9));
				bean.setBatch(resultset.getString(10));
				bean.setCity(resultset.getString(11));
				bean.setState(resultset.getString(12));
				bean.setDob(resultset.getString(13));
				bean.setSecurityquestion(resultset.getString(14));
				bean.setAnswer(resultset.getString(15));
				bean.setAddress(resultset.getString(16));

			  }
			  
			  
		  }
		  catch(Exception e)
		  {
			  e.printStackTrace();
		
		  }
		  return bean;
	  }
}
