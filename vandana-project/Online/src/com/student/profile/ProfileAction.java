package com.student.profile;
import java.sql.*;
import com.student.ragisteration.*;

import com.database.Dao;
import com.student.ragisteration.StudentBean;

public class ProfileAction
{
  
  private StudentBean bean;
  private Connection connection;
  private PreparedStatement prepare;
  private ResultSet resultset;
  private int result;
  private boolean flag;
  
  private String updateQuery="update studentpersonal set fathersname=?,email=?,contact=?,securityquestion=?,answer=?,address=? where regid=?";
  private String selectAll="select * from studentpersonal where regid=?";
  public ProfileAction(StudentBean bean)
  {
	  this.bean=bean;
	 
	  connection=Dao.getConnect();
	  System.out.println("Connection created....");
  }
  
  
  public StudentBean getBean()
  {
	  return bean;
  }
  
  
  public StudentBean select()
  {
	  try
	  {
		prepare=connection.prepareStatement(selectAll);
		prepare.setInt(1, bean.getRegid());
		resultset=prepare.executeQuery();
		if(resultset.next())
		{
			bean.setFirstname(resultset.getString(1));
			bean.setLastname(resultset.getString(2));
			bean.setFathersname(resultset.getString(3));
			bean.setEmail(resultset.getString(4));
			bean.setContact(resultset.getString(5));
			bean.setCourse(resultset.getString(6));
			bean.setQualification(resultset.getString(7));
			bean.setGender(resultset.getString(8));
			bean.setBatch(resultset.getString(9));
			bean.setCity(resultset.getString(10));
			bean.setState(resultset.getString(11));
            bean.setDob(resultset.getString(12));
            bean.setSecurityquestion(resultset.getString(13));
            bean.setAnswer(resultset.getString(14));
           
            bean.setAddress(resultset.getString(15));
            bean.setRegid(resultset.getInt(16));
			
         }
	  }
	  catch(Exception e)
	  {
		  e.printStackTrace();
	  }
	  return bean;
  }
  
  public boolean update()
  {
	
	  try
	  
	  {
		  
		  prepare=connection.prepareStatement(updateQuery);
		  prepare.setString(1, bean.getFathersname());
		  prepare.setString(2, bean.getEmail());
		  prepare.setString(3, bean.getContact());
		  prepare.setString(4, bean.getSecurityquestion());
		  prepare.setString(5, bean.getAnswer());
		  prepare.setString(6, bean.getAddress());
		  //prepare.setString(7, bean.getPassword());
		  prepare.setInt(7, bean.getRegid());
		  
		  if(prepare.executeUpdate()==1)
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
