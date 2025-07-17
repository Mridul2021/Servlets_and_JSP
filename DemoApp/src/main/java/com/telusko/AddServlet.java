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
	
//	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException //do not write any other method name, use service only
//	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException 
	// this will work only with post request, if we use get in HTML, it will not work
	{
		int i=Integer.parseInt(req.getParameter("num1"));
		int j=Integer.parseInt(req.getParameter("num2"));
		int k=i+j;
		System.out.println("result is: "+k);
		
		PrintWriter out=res.getWriter(); //include throws IOException
		out.println("result is "+k); //this will give the output on the client page
		

	}
}
