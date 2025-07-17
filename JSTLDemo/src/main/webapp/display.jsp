<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- Tag Library  -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<!-- using java language  -->
	
	<%
		String name=request.getAttribute("label").toString();
		out.println(name);
	%>
	
	<!-- using expression language, only valid for JSP version 2 or later  -->
	${label} <br/> 
	
	<!-- using JSTL  -->
	<c:out value="Hello World"/>
	<c:out value="${label}"/>
	
	<!-- This is used to fetch the entire Web Site  -->
	<!-- <c:import URL="http://www.google.com"></c:import>  -->
	
</body>
</html>