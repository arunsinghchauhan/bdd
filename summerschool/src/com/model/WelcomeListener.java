package com.model;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public  class WelcomeListener  implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
	      System.out.println("###########Application is started@@@@@@@@@@@@@@");
	     ServletContext context= arg0.getServletContext();
	     String email=context.getInitParameter("fooemail");
	     context.setAttribute("adminEmail",email);
	}

	

}
