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
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/OuBUUkQfBYM?si=Xve4fzRm_h8wgqB6" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</body>
</html>