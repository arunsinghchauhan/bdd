package com.books;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.books.*;
import com.database.Dao;

public class BookAction
{
	private BookBean bean;
	private Connection connection;
	private PreparedStatement prepare;
	private ResultSet resultset;
	private boolean flag;
	private int result;
	
	private String insertQuery="insert into book values(?,?,?,?,?,?,?)";
	
	public BookAction(BookBean bean)
	{
		this.bean=bean;
		connection= Dao.getConnect();
	 	   System.out.println("connection Created.........");
	   
	}
	
	public boolean insert()
	{
		try
		{
			prepare=connection.prepareStatement(insertQuery);
			prepare.setString(1, bean.getCode());
			prepare.setString(2, bean.getSubject());
			prepare.setString(3, bean.getBookname());
			prepare.setString(4, bean.getAuthor());
			prepare.setString(5, bean.getCourse());
			prepare.setString(6, bean.getSemester());
			prepare.setString(7, bean.getAttachfile());
			
		   result =prepare.executeUpdate();
		   
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
	