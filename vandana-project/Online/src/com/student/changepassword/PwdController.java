package com.student.changepassword;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class PwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   		RequestDispatcher dispatcher;
   		HttpSession session=request.getSession();
   		PasswordBean bean=new PasswordBean();
   	
   		bean.setOldpassword(request.getParameter("oldpassword"));
   		bean.setNewpassword(request.getParameter("newpassword"));
   		bean.setConfirm(request.getParameter("confirm"));
   		
   		bean.setRegid(Integer.parseInt(session.getAttribute("userid").toString()));

   		PasswordAction action=new PasswordAction(bean);
   		boolean result=action.check();
   		
   		if(action.check())
		{
   			
			request.setAttribute("msg", "Updation  Successfull...");
			dispatcher=request.getRequestDispatcher("Student-ChangePasswordPage.jsp");
			dispatcher.forward(request,response);
			
		}
   		else
   		{

			request.setAttribute("msg", "Updation  failed...");
			dispatcher=request.getRequestDispatcher("Student-ChangePasswordPage.jsp");
			dispatcher.forward(request,response);
	
   		}
	}

}
