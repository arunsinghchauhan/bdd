package com.logincontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.loginaction.LoginAction;
import com.loginbean.LoginBean;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		LoginBean login=new LoginBean();
		LoginAction  action = new LoginAction(login);
		RequestDispatcher dispatch;
		login.setUsername(request.getParameter("username"));
		login.setPassword(request.getParameter("password"));
		login.setType(request.getParameter("type"));
		
	    String username=request.getParameter("username");
		String password=request.getParameter("password");
		String type=request.getParameter("type");
		
		
		boolean flag=action.search();
			 
			 if(flag==true&&type.equalsIgnoreCase("admin"))
			 {
				 session.setAttribute("userid",username);
			   request.setAttribute("msg", "Login success");
		       dispatch=request.getRequestDispatcher("AdminSuccessLogin.jsp");
		       dispatch.forward(request, response);
		     }
			 else if(flag==true&&type.equalsIgnoreCase("student"))
			 {
			   session.setAttribute("userid",username);
			   request.setAttribute("msg", "Login success");
		       dispatch=request.getRequestDispatcher("StudentSuccessLogin.jsp");
		       dispatch.forward(request, response);
		     }
			 else
			 {
				 request.setAttribute("msg", "ErrorLogin");
			       dispatch=request.getRequestDispatcher("HomePageAdmin.jsp");
			       dispatch.forward(request, response);
			     
			 }
		}
			  

	}

