package com.datesheet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;

import com.search.books.BkBean;

public class DateSheetAction 
{
	  private BkBean bean;
	  private Connection connection;
	  private PreparedStatement prepare;
	  private ResultSet resultset;
	  private ResultSetMetaData metadata;
	  
      private ArrayList<Object> list;
      
      private String searchBySem="select * from adm where semester=?";
      private String searchByCourse="select * from book where course=?";
     
	  
	  
}
