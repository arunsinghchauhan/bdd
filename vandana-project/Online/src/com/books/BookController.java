package com.books;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher;
		BookBean bean=new BookBean();
		bean.setCode(request.getParameter("code"));
		bean.setSubject(request.getParameter("subject"));
		bean.setBookname(request.getParameter("bookname"));
		bean.setAuthor(request.getParameter("author"));
		bean.setCourse(request.getParameter("course"));
		bean.setSemester(request.getParameter("semester"));
		bean.setAttachfile(request.getParameter("attachfile"));
		
		BookAction action=new BookAction(bean);
		
	   boolean result=action.insert();
		
	   if(result==true)
	    {
	        request.setAttribute("msg", "Book Added Successfully");
	    	dispatcher=request.getRequestDispatcher("Admin-AddBooksPage.jsp");
	    	dispatcher.forward(request,response);
	    }
	   else
	   {
		   request.setAttribute("msg", "Failure in Addition");
	    	dispatcher=request.getRequestDispatcher("Admin-AddBooksPage.jsp");
	    	dispatcher.forward(request,response);
	    
		   
	   }
		
		
	}

}
