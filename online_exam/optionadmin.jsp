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
		String select=request.getParameter("select");
		if(select.equals("stud"))
		{
		%>
		<br><br><br><br><br><br><br>
		<center><h1>Select the subject</h1><form action="studentdata-admin.jsp">
            <select name="sub">
			<option  value="java">JAVA</option>
			<option  value="c">C</option>
			<option  value="cd">COMPILER DESIGN</option>
		</select>
		<input type="submit" value="submit">
		</form>
		</center>
		<%}
		else if(select.equals("emp"))
		{%>
		<%
			int c=0;
			String sql="select *from employ1";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery(sql);

		%>
		<br><br><br><br><br><br><br>
		<center><h1 style="color:D2691E">Employ Details:</h1><table><tr><th>Sl No.</th><th>Name</th><th>Password</th><th>E-mail</th><th>Id</th><th>Contact</th></tr>
		<%while(rs.next()){ 
		c++;
		%>
				
		<tr><td><%out.println(c);%></td><td><%out.println(rs.getString(1));%></td><td><%out.println(rs.getInt(2));%></td><td><%out.println(rs.getString(3));%></td><td><%out.println(rs.getInt(4));%></td><td><%out.println(rs.getLong(5));%></td></tr>
		<%}%>
		<%st.close();
		cn.close();
		%>
		</table></center><br><br>

			<%} 
			else{
			%>
			<%
			int c=0;
			String sql="select *from student";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery(sql);

		%>
		<br><br><br><br><br><br><br>
		<center><h1 style="color:D2691E">Student Details:</h1><table><tr><th>Sl No.</th><th>Name</th><th>Password</th><th>E-mail</th><th>Regd No.</th></tr>
		<%while(rs.next()){ 
		c++;
		%>
				
		<tr><td><%out.println(c);%></td><td><%out.println(rs.getString(1));%></td><td><%out.println(rs.getInt(2));%></td><td><%out.println(rs.getString(3));%></td><td><%out.println(rs.getInt(4));%></td></tr>
		<%}%>
		<%st.close();
		cn.close();
		%>
		
		</table></center><br><br>
		
		<center><form action="adminlogout">
		<input type="submit" value="logout">
		</form></center>
		<%}%>
		</body>
		</html>