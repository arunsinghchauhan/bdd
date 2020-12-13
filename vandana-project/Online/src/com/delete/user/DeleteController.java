package com.delete.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.student.ragisteration.StudentBean;


public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	RequestDispatcher dispatcher;
    	StudentBean bean=new StudentBean();
    	bean.setRegid(Integer.parseInt(request.getParameter("regid")));
    	
    	DeleteAction action=new DeleteAction(bean);
    	boolean result=action.delete();
    	if(result==true)
    	{
    		request.setAttribute("msg","Deletion Successful");
    		dispatcher=request.getRequestDispatcher("DeleteUser.jsp");
    		dispatcher.forward(request, response);
    	}
    	else
    	{
    		request.setAttribute("msg","Deletion Unsuccessful");
    		dispatcher=request.getRequestDispatcher("DeleteUser.jsp");
    		dispatcher.forward(request, response);
    	
    	}
    	
    	
    	
    	}

}
