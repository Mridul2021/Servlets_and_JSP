<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- Use this tag for using JSTL with sql  -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <!-- Tag Library  -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="db" driver="org.postgresql.Driver" 
    url="jdbc:postgresql://localhost:5432/telusko" 
    user="postgres" 
    password="maiHOON2002!"/>
    
    <sql:query var="rs" dataSource="${db}">select * from gadgets</sql:query>
    
	<c:forEach items="${rs.rows}" var="gadget">
		<c:out value="${gadget.gid}"></c:out> : <c:out value="${gadget.gname}"></c:out> : <c:out value="${gadget.price}"></c:out> <br/>
	</c:forEach>
</body>
</html>