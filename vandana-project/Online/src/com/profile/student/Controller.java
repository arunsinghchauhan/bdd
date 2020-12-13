package com.profile.student;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student.ragisteration.StudentBean;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher;
		HttpSession session=request.getSession();
		
		StudentBean bean=new StudentBean();
		bean.setEmail(request.getParameter("email"));
		bean.setContact(request.getParameter("contact"));
		bean.setQualification(request.getParameter("qualification"));
		bean.setCity(request.getParameter("city"));
		bean.setState(request.getParameter("state"));
		bean.setSecurityquestion(request.getParameter("securityquestion"));
		bean.setAnswer(request.getParameter("answer"));
		bean.setAddress(request.getParameter("address"));
		
		Action action=new Action(bean);
		boolean result=action.update();
		if(result==true)
		{
			bean=action.select();
			session.setAttribute("bean", bean);
			request.setAttribute("msg", "updation successful.....");
			dispatcher=request.getRequestDispatcher("StudentProfile.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			request.setAttribute("msg", "updation failed.....");
			dispatcher=request.getRequestDispatcher("/StudentProfile.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
	}

}
