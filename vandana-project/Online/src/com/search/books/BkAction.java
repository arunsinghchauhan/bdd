package com.search.books;

import java.sql.*;
import java.util.ArrayList;

import com.database.Dao;
public class BkAction 
{
  private BkBean bean;
  private Connection connection;
  private PreparedStatement prepare;
  private ResultSet resultset;
  private ResultSetMetaData metadata;
  private ArrayList<Object> list;
  
  
  private String searchBySem="select * from book where semester=?";
  private String searchByCourse="select * from book where course=?";
  private String searchBySub="select * from book where subject=?";
  private String searchByBook="select * from book where bookname=?";
  
	
  public BkAction(BkBean bean)
  {
	  this.bean=bean;
	  connection=Dao.getConnect();
	  
  }
  
  public ArrayList<Object> search()
  {
	 list=new ArrayList<Object>();
	 
	 try
	  {
		 if(bean.getChoice().equalsIgnoreCase("semester"))
		 {
			 prepare=connection.prepareStatement(searchBySem);
			 prepare.setString(1, bean.getSvalue());
			 
		}
		 else if(bean.getChoice().equalsIgnoreCase("course"))
		 {
			 prepare=connection.prepareStatement(searchByCourse);
			 prepare.setString(1, bean.getSvalue());
			  
		 }
		 else if(bean.getChoice().equalsIgnoreCase("subject"))
		 {
			 prepare=connection.prepareStatement(searchBySub);
			 prepare.setString(1, bean.getSvalue());
			  
		 }
		 else if(bean.getChoice().equalsIgnoreCase("bookname"))
		 {
			 prepare=connection.prepareStatement(searchByBook);
			 prepare.setString(1, bean.getSvalue());
			  
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
