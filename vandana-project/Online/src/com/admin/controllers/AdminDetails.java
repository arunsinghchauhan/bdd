package com.admin.controllers;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.action.AdminAction;



public class AdminDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminDetails() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  RequestDispatcher dispatcher;
	  
	  com.adminbean.Admin admin=new com.adminbean.Admin();
	  admin.setUsername(request.getParameter("username"));
	  admin.setPassword(request.getParameter("password"));
	  admin.setFirstname(request.getParameter("firstname"));
	  admin.setLastname(request.getParameter("lastname"));
	  admin.setDob(request.getParameter("dob"));
	  admin.setAddress(request.getParameter("address"));
	  admin.setEmail(request.getParameter("email"));
	  admin.setContact(Long.parseLong(request.getParameter("contact")));
	  
	  
	  AdminAction action=new AdminAction(admin);
	  boolean result=action.insert();
	    
	    if(result==true)
	    {
	        request.setAttribute("msg", "Success");
	    	dispatcher=request.getRequestDispatcher("Admin-InfoPage.jsp");
	    	dispatcher.forward(request,response);
	    }
	    else
	    {
	    	request.setAttribute("msg", "Failure");
	    	dispatcher=request.getRequestDispatcher("Admin-InfoPage.jsp");
	    	dispatcher.forward(request,response);
	    }

	  
	  
	  
	}

}
