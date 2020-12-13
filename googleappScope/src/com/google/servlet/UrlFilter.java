package com.google.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class UrlFilter implements Filter{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {

		HttpServletRequest  request=(HttpServletRequest)arg0;
		String path=request.getServletPath();
		System.out.println("////"+path);
		
		//this is forwarding the request to the request resource jsp/servlet/html
		arg2.doFilter(arg0, arg1);
		
		System.out.println("when response is generated");
		System.out.println("when response is generated");
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
