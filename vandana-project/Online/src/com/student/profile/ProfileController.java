package com.student.profile;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student.ragisteration.StudentBean;


public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestDispatcher dispatcher;
		HttpSession session=request.getSession();
		StudentBean bean=new StudentBean();
		
		bean.setRegid(Integer.parseInt((String) session.getAttribute("userid")));
		bean.setFathersname(request.getParameter("fathersname"));
		bean.setEmail(request.getParameter("email"));
		bean.setContact(request.getParameter("contact"));
		bean.setAddress(request.getParameter("address"));
		bean.setDob(request.getParameter("dob"));
		bean.setSecurityquestion(request.getParameter("securityquestion"));
		bean.setAnswer(request.getParameter("answer"));
		
		ProfileAction action=new ProfileAction(bean);
		boolean result=action.update();
		
		
		if(result==true)
		{
			request.setAttribute("msg", "Signup Successful");
			dispatcher=request.getRequestDispatcher("studentinfo.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			request.setAttribute("msg", "Signup Unsuccessful");
			dispatcher=request.getRequestDispatcher("studentinfo.jsp");
			dispatcher.forward(request, response);
	}
		
	}

}
