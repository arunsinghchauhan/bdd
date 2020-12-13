package com.delete.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.database.Dao;
import com.student.ragisteration.StudentBean;

public class DeleteAction 
{
 private StudentBean bean;
 private Connection connection;
 private PreparedStatement prepare;
 private ResultSet resultset;
 private boolean flag;
 private int result;
 
 private String deleteQuery="delete from adm where regid=?";
 
 public DeleteAction(StudentBean bean)
 {
	 this.bean=bean;
	 connection=Dao.getConnect();
	 System.out.println("Connection Created...");
 }
 
 public boolean delete()
 {
	 try
	 {
		 prepare=connection.prepareStatement(deleteQuery);
		 prepare.setInt(1, bean.getRegid());
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
