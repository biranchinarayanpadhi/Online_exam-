<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
    <head>
        <title>Select-admin</title> 
		<style>
		table, th, td 
		{ border: 1px solid black;
		  border-collapse: collapse;
		  }
		  th, td {
		  padding: 5px;
		  text-align: left;
		  }
      </style>
    </head>
    <body>
		<%
		int c=0;
		String subject=request.getParameter("sub");
		String sql="select *from admin where subject= '" + subject + "'";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		Statement st=cn.createStatement();
		ResultSet rs=st.executeQuery(sql);		
		%>
		<br><br><br><br><br><br><br>
		<center><h1 style="color:D2691E">Student Details:</h1>
	<table><tr><th>Sl No.</th><th>Name</th><th>Subject</th><th>Result</th></tr>
		<%while(rs.next()){
		c++;
		%>
		<tr><td><%out.println(c);%></td><td><%out.println(rs.getString(1));%></td><td><%out.println(rs.getString(2));%></td><td><%out.println(rs.getString(3));%></td></tr>
		<%}%>
		<%st.close();
		cn.close();
		%>
		</table></center><br><br>
		<center><form action="adminlogout">
		<input type="submit" value="logout">
		</form></center>
		</body>
		</html>