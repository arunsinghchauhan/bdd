package com.admin.Update.Announcements;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AnnouncementsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AnnouncementsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher dispatcher=null;
		
		AnnouncementsBean bean=new AnnouncementsBean();
		bean.setNews(request.getParameter("news"));
		bean.setEventdate(request.getParameter("eventdate"));
		bean.setFile(request.getParameter("file"));
		String choice[]=request.getParameterValues("choice");
		
		//System.out.println(request.getParameter("news"));
		//System.out.println(request.getParameter("eventdate"));
		//System.out.println(request.getParameter("file"));
		
		AnnouncementsAction action=new AnnouncementsAction(bean);
		boolean result=action.insert();
		        result=action.delete();

		if(result==true)
		{
			request.setAttribute("msg","Updation Successful");
			dispatcher=request.getRequestDispatcher("AnnouncementsUpdationSuccess.jsp");
			dispatcher.forward(request, response);
			if(choice!=null)
			{
				request.setAttribute("msg","Deletion Successful");
				
			}
			else
			{
				
			}
		}
		else
		{
		request.setAttribute("msg","Updation Failure");
		dispatcher=request.getRequestDispatcher("Admin-AddUpdatesPage.jsp");
		dispatcher.forward(request, response);
        }
	}

}
