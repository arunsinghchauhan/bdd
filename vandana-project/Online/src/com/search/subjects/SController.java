package com.search.subjects;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.search.books.BkAction;
import com.search.books.BkBean;


public class SController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 RequestDispatcher dispatcher;
		  SubBean bean = new SubBean();
		  bean.setChoice(request.getParameter("choice"));
		  bean.setValue(request.getParameter("value"));
		  
		  
		  SubAction action=new SubAction(bean);
		  ArrayList<Object> list =action.search();
		  
		  request.setAttribute("list", list);
		  dispatcher=request.getRequestDispatcher("ViewSubjectPage.jsp");
		  dispatcher.forward(request, response);
			
		
	}

}
