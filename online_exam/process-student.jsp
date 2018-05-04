<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%
int s;
String firstname=request.getParameter("fname");
String email=request.getParameter("email");
int regNo=Integer.parseInt(request.getParameter("regno"));
int password=Integer.parseInt(request.getParameter("pass"));

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?)");
ps.setString(1,firstname);
ps.setInt(2,password);
ps.setString(3,email);
ps.setInt(4,regNo);
ResultSet rs=ps.executeQuery();
%>
<br><br><br><br><br><br>
<center><h1><%out.println("Registered!!!!");%><br>
<a href="studentlogin.jsp">LOGIN HERE</a></center>

</body>
</html>