package com.becoder.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.becoder.entity.User;

public class AuthHandler implements HandlerInterceptor{

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
	    User user = (User) request.getSession().getAttribute("userObj");
		if(user!=null)
		{
			return true;
		}
		else
		{
			/* response.sendRedirect("login"); */
			response.getWriter().print("<center><h1>Please login</h1></center>");
			return false; 	
		}
		
	}

}
