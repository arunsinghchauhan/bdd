package com.student.changepassword;

import java.sql.*;

import com.database.Dao;

public class PasswordAction 
{
	private PasswordBean bean;
	private Connection connection;
	private PreparedStatement prepare;
	
	private ResultSet resultset;
    private int result;
	private boolean flag;
	private String compare;
	  
    private String checkQuery="select * from adm where regid=?";
    private String upadetQuery="update adm set password=? where regid=?";
    
    public PasswordAction(PasswordBean bean)
    {
    	this.bean=bean;
    	connection=Dao.getConnect();
    	System.out.println("connection created......");
    }
    
    public boolean check()
    {
    	try
    	{
    		prepare=connection.prepareStatement(checkQuery);
    		prepare.setInt(1, bean.getRegid());
    		
    		resultset=prepare.executeQuery();
    		
    		if(resultset.next())
    		{
    			compare=resultset.getString(9);
    			if(compare.equalsIgnoreCase(bean.getOldpassword()))
    			{
    				prepare=connection.prepareStatement(upadetQuery);
    				prepare.setString(1, bean.getNewpassword());
    				
    				prepare.setInt(2, bean.getRegid());
    				
    				if(bean.getNewpassword().equalsIgnoreCase(bean.getConfirm()))
    				{
    				    prepare.executeUpdate();
    				    flag=true;
    				   
    				}
    				else
    				{
    					flag=false;
    					System.out.println("New Password & confirm Password Does not match");
    				}
    				
    			}
    			
    			else
    			{
    				System.out.println("you have entered wrong password");
    			}
    		}
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return flag;
    }
    
    

}
