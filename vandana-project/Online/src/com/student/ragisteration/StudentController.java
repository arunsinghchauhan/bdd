package com.student.ragisteration;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   		RequestDispatcher dispatcher;
   	StudentBean bean=new StudentBean();
   	bean.setFirstname(request.getParameter("firstname"));
   	bean.setLastname(request.getParameter("lastname"));
   	
   	bean.setFathersname(request.getParameter("fathersname"));
   	bean.setCourse(request.getParameter("course"));
   	bean.setGender(request.getParameter("gender"));
   	bean.setAddress(request.getParameter("address"));
   	bean.setEmail(request.getParameter("email"));
   	bean.setContact(request.getParameter("contact"));
   	bean.setBatch(request.getParameter("batch"));
   	bean.setCity(request.getParameter("city"));
   	bean.setState(request.getParameter("state"));
   	bean.setDob(request.getParameter("dob"));
   	bean.setQualification(request.getParameter("qualification"));
   	
   	StudentAction action=new StudentAction(bean);
     
    boolean result=action.insert();
    
    if(result==true)
    {
    	bean=action.getBean();
    	request.setAttribute("bean", bean);
    	dispatcher=request.getRequestDispatcher("Success.jsp");
    	dispatcher.forward(request,response);
    }
    else
    {
    	request.setAttribute("msg", "Ragisteration Failed....");
    	dispatcher=request.getRequestDispatcher("Success.jsp");
    	dispatcher.forward(request,response);
    }

   
   	
   	
   	
   	
   	
   	}

}

































