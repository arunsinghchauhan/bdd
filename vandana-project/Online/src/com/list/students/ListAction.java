package com.list.students;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;

import com.database.Dao;
import com.search.books.BkBean;

public class ListAction
{
	 private BkBean bean;
	  private Connection connection;
	  private PreparedStatement prepare;
	  private ResultSet resultset;
	  private ResultSetMetaData metadata;
	  private ArrayList<Object> list;
	  
	  private String searchByCourse="select * from adm where course=?";
	  
	  public ListAction(BkBean bean)
	  {
		  this.bean=bean;
		  connection=Dao.getConnect();
		  
	  }
	  
	  public ArrayList<Object> search()
	  {
		  list=new ArrayList<Object>();
		  try
		  {
			  if(bean.getChoice().equalsIgnoreCase("bca"))
				 {
					 prepare=connection.prepareStatement(searchByCourse);
					 prepare.setString(1, bean.getChoice());
				 }
			  else if(bean.getChoice().equalsIgnoreCase("mca"))
			  {
				  prepare=connection.prepareStatement(searchByCourse);
					 prepare.setString(1, bean.getChoice());
				 
			  }
			 
		  else if(bean.getChoice().equalsIgnoreCase("b.tech"))
		  {
			  prepare=connection.prepareStatement(searchByCourse);
				 prepare.setString(1, bean.getChoice());
			 
		  }
			 
		  else if(bean.getChoice().equalsIgnoreCase("m.tech"))
		  {
			  prepare=connection.prepareStatement(searchByCourse);
				 prepare.setString(1, bean.getChoice());
			 
		  }
		  else if(bean.getChoice().equalsIgnoreCase("bba"))
		  {
			  prepare=connection.prepareStatement(searchByCourse);
				 prepare.setString(1, bean.getChoice());
			 
		  }
		  else if(bean.getChoice().equalsIgnoreCase("mba"))
		  {
			  prepare=connection.prepareStatement(searchByCourse);
				 prepare.setString(1, bean.getChoice());
			 
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
							list.add(resultset.getObject(8));
							list.add(resultset.getObject(9));
							list.add(resultset.getObject(10));
							list.add(resultset.getObject(11));
							list.add(resultset.getObject(12));
							list.add(resultset.getObject(13));
							list.add(resultset.getObject(14));
							list.add(resultset.getObject(15));
							
						
						}
				
		  }
		  catch(Exception e)
            {
			  e.printStackTrace();
			  }
		  return list;
	  }
	 
}
