package com.telusko;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* Hey Subscribers...
*
* ServletConfig & ServletContext
*
*/
public class MyServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	PrintWriter out=response.getWriter();
    	out.print("Hi "); //<br/> is for new line
    	
    	ServletConfig cg=getServletConfig();
    	String str=cg.getInitParameter("name");
    	out.println(str);
    }
}
