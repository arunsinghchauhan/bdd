package com.google.servlet.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class GoogleListener implements ServletContextListener{

	public void contextDestroyed(ServletContextEvent arg0) {
	
		
	}

	public void contextInitialized(ServletContextEvent arg0) {
		ServletContext context=arg0.getServletContext();
		System.out.println("+++_@_@_@++@+@__@_@_@_@@+@+@+@+@++@+@+@+");
		System.out.println("______This is ARUN____________________");
		System.out.println("+++_@_@_@++@+@__@_@_@_@@+@+@+@+@++@+@+@+");
		context.setAttribute("email","nagendra.yadav.niit@gmail.com");
      
		
	}

}
