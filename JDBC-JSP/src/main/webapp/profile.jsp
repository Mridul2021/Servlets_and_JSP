<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.Statement, java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Info</title>
</head>
<body>
  <%
    String url = "jdbc:postgresql://localhost:5432/telusko";
    String username = "postgres";
    String password = "maiHOON2002!";
    String sql = "select * from students where rollno=103";
    
    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection(url, username, password);
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(sql);
    
    if (rs.next()) {
  %>
      Rollno : <%= rs.getString(1) %> <br>
      Name : <%= rs.getString(2) %> <br>
      Marks : <%= rs.getString(3) %> <br>
  <%
    } else {
  %>
      No student found with rollno 103.
  <%
    }
    rs.close();
    st.close();
    con.close();
  %>
</body>
</html>
