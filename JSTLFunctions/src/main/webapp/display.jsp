<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- Use this tag for using JSTL tags -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <!-- Use this for using JSTL functions -->
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str" value="Navin Reddy is a Java Trainer"/>
	Length: ${fn:length(str)}
	<br/>
	
	
	<c:forEach items="${fn:split(str, ' ')}" var="s">
    <br>
    ${s}
	</c:forEach>
	
	<!-- Check the index of "is" -->
	index of is: ${fn:indexOf(str,"is")}	
	<br/>
	
	<!-- Check if the string contains "java" -->
	is there: ${fn:contains(str, "Java")}
	<br/>
	
	<!-- Check if the string contains "java" using if statement, use single quotes for java only -->
	<c:if test="${fn:contains(str, 'Java')}">
    	String contains "java"
	</c:if>
	<br/>
	
	
	<!-- Check if the string ends with Trainer -->
	<c:if test="${fn:endsWith(str, 'Trainer')}">
    	you are right buddy
	</c:if>
	<br/>
	

	<!-- Convert String to lower case -->
	${fn:toLowerCase(str)}
	<br/>
	
	
	<!-- Convert String to upper case -->
	${fn:toUpperCase(str)}
	<br/>
	
</body>
</html>