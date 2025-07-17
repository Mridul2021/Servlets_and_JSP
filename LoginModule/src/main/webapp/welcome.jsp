<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		//page will not be stored in cache, so after logout, page will not be shown
		//works perfectly of HTTP 1.1
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		//for oldere version of http, add this as well
		response.setHeader("Progma", "no-cache"); //for HTTP 1.0
				
		//for proxy servers, add this as well\
		response.setHeader("Expires", "0"); // 0 means 0 seconds
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	welcome ${username}
	<a href="videos.jsp">Videos here</a>
	
	<form action="Logout" method="get">
    <input type="submit" value="Logout">
</form>

</body>
</html>