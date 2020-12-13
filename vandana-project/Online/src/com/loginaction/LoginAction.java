package com.loginaction;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.database.Dao;
import com.loginbean.LoginBean;

public class LoginAction {
	
	private Connection connection;
	private PreparedStatement prepare;
	private ResultSet resultset;
	private LoginBean login;
	private String matchqoery_admin="select * from admin where username=? and password=?";
	private String matchqoery_student="select * from adm where regid=? and password=?";
	
	private boolean flag;
	public LoginAction(LoginBean login)
	{
		this.login=login;
		connection=Dao.getConnect();
	}
	
	
	public boolean search()
	{
		try
		{
			if(login.getType().equalsIgnoreCase("student"))
			{
					prepare=connection.prepareStatement(matchqoery_student);
			}
			else if(login.getType().equalsIgnoreCase("admin")){
				prepare=connection.prepareStatement(matchqoery_admin);

			}
		prepare.setString(1, login.getUsername());
		prepare.setString(2, login.getPassword());
		resultset=prepare.executeQuery();
		 
		if(resultset.next())
		{
			flag=true;
		}
		else
		{
			flag=false;
		}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}

}
