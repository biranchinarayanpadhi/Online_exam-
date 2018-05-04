<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration-emp</title>
</head>
<body>
<% 
String finame=request.getParameter("fname1");
String email1=request.getParameter("email1");
int id=Integer.parseInt(request.getParameter("id"));
 int password=Integer.parseInt(request.getParameter("pass"));
 long contact=Long.parseLong(request.getParameter("cont"));

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
PreparedStatement ps=con.prepareStatement("insert into employ1 values(?,?,?,?,?)");
ps.setString(1,finame);
ps.setInt(2,password);
ps.setString(3,email1);
ps.setInt(4,id);
ps.setLong(5,contact);
ResultSet rs=ps.executeQuery();
%>
<br><br><br><br><br><br>
<center><h1><%out.println("Registered!!!!");%><br>
<a href="employlogin.jsp">LOGIN HERE</a></center>
</body>
</html>