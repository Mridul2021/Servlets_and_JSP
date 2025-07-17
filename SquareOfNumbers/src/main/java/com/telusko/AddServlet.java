package com.telusko;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddServlet extends HttpServlet
{
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
	{
		int i=Integer.parseInt(req.getParameter("num1"));
		int k=i*i;
		
//		Session Management-> used to pass data across different servlets
		req.setAttribute("k", k); //first value is key and second is value
		
		
		RequestDispatcher rd=req.getRequestDispatcher("sq");
		rd.forward(req, res); //write ServletException
		
	}
}
