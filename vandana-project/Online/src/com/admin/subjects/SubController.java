package com.admin.subjects;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher;
   		SubjectBean bean=new SubjectBean();
   		bean.setSubject(request.getParameter("subject"));
   		bean.setCode(request.getParameter("code"));
   		bean.setCourse(request.getParameter("course"));
   		bean.setPaperid(request.getParameter("paperid"));
   		
   		bean.setSemester(request.getParameter("semester"));
   		bean.setMaxmarks(request.getParameter("maxmarks"));
   		bean.setMinmarks(request.getParameter("minmarks"));
   		
   		SubjectAction action=new SubjectAction(bean);
   		boolean result=action.insert();
   		if(result==true)
   		{
   			request.setAttribute("msg", "Subject Added to List");
   			dispatcher=request.getRequestDispatcher("Admin-SubjectViewPage.jsp");
   			dispatcher.forward(request,response);
   		}
   		else
   		{
   			request.setAttribute("msg", "Failure");
   			dispatcher=request.getRequestDispatcher("Admin-SubjectViewPage.jsp");
   			dispatcher.forward(request,response);
   	
   		}
   		
   		
	}

}
