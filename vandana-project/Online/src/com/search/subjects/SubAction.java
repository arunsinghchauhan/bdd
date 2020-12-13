package com.search.subjects;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;

import com.database.Dao;
import com.search.books.BkBean;

public class SubAction
{
private SubBean bean;
private Connection connection;
private PreparedStatement prepare;
private ResultSet resultset;
private ResultSetMetaData metadata;
private ArrayList<Object> list;

private String searchBySem="select * from subjects where semester=?";
private String searchByCourse="select * from subjects where course=?";
private String searchBySub="select * from subjects where subject=?";
private String searchByCode="select * from subjects where code=?";
private String searchByPaper="select * from subjects where paperid=?";

  public SubAction(SubBean bean)
    {
	  this.bean=bean;
	  connection=Dao.getConnect();
	  
   }
  
  public ArrayList<Object> search()
  {
	  list=new ArrayList<Object>();
		 
		 try
		  {
			 if(bean.getChoice().equalsIgnoreCase("subject"))
			 {
				 prepare=connection.prepareStatement(searchBySub);
				 prepare.setString(1, bean.getValue());
				 
			}
			 else if(bean.getChoice().equalsIgnoreCase("code"))
			 {
				 prepare=connection.prepareStatement(searchByCode);
				 prepare.setString(1, bean.getValue());
				  
			 }
			 else if(bean.getChoice().equalsIgnoreCase("course"))
			 {
				 prepare=connection.prepareStatement(searchByCourse);
				 prepare.setString(1, bean.getValue());
				  
			 }
			 else if(bean.getChoice().equalsIgnoreCase("semester"))
			 {
				 prepare=connection.prepareStatement(searchBySem);
				 prepare.setString(1, bean.getValue());
				  
			 }
			 else if(bean.getChoice().equalsIgnoreCase("paperid"))
			 {
				 prepare=connection.prepareStatement(searchByPaper);
				 prepare.setString(1, bean.getValue());
				  
			 }
			 
			   resultset=prepare.executeQuery();
				metadata=resultset.getMetaData();
				int cols=metadata.getColumnCount();
				
				for(int i=1; i<=cols;i++)
				{
					list.add(metadata.getColumnName(i));
				}
				
				while(resultset.next())
				{
					list.add(resultset.getObject(1));
					list.add(resultset.getObject(2));
					list.add(resultset.getObject(3));
					list.add(resultset.getObject(4));
					list.add(resultset.getObject(5));
					list.add(resultset.getObject(6));
					list.add(resultset.getObject(7));
				}
				  
			  }
			  catch(Exception e)
			  {
				  e.printStackTrace();
			  }
			  return list;
		  }

		
	  
  }




