package com.search.books;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  RequestDispatcher dispatcher;
	  BkBean bean = new BkBean();
	  bean.setChoice(request.getParameter("choice"));
	  bean.setSvalue(request.getParameter("svalue"));
	  
	  
	  BkAction action=new BkAction(bean);
	  ArrayList<Object> list =action.search();
	  
	  request.setAttribute("list", list);
	  dispatcher=request.getRequestDispatcher("ViewBookPage.jsp");
	  dispatcher.forward(request, response);
		
		
	}

}
