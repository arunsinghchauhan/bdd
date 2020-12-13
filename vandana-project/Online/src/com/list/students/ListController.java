package com.list.students;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.search.books.BkAction;
import com.search.books.BkBean;


public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher;
		  BkBean bean = new BkBean();
		  bean.setChoice(request.getParameter("choice"));

		  ListAction action=new ListAction(bean);
		  ArrayList<Object> list =action.search();
		  
		  request.setAttribute("list", list);
		  dispatcher=request.getRequestDispatcher("ViewStudent.jsp");
		  dispatcher.forward(request, response);
			
		
	
	}

}
