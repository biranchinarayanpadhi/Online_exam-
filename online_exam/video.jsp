<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QUESTIONS</title>
</head>
<body>
<%
   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
			
		if(session.getAttribute("username")==null&&session.getAttribute("password")==null)
		{
			response.sendRedirect("studentlogin.jsp");
		}
		%>
	<form action="answersdao">
	<%
		  String sub=request.getParameter("sub");
		  String sql="select *from " + sub + ""; 
		  session.setAttribute("subject",sub);
			int c=1;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery(sql);
		%>		
			<%while(rs.next()){%>
			
				<h3><%out.println(c+")"+rs.getString(1));
				c++;%></h3><br>
		<h4>
		
		<label><input type="checkbox" name="A[]" value="1"><%out.println(rs.getString(2));%></input></label>&nbsp&nbsp&nbsp
		<label><input type="checkbox" name="A[]" value="2"><%out.println(rs.getString(3));%></input></label>&nbsp&nbsp&nbsp
		<label><input type="checkbox" name="A[]" value="3"><%out.println(rs.getString(4));%></input></label>&nbsp&nbsp&nbsp
		<label><input type="checkbox" name="A[]" value="4"><%out.println(rs.getString(5));%></input></label></h4><br><%}%>
		<input type="submit" value="submit"/>
		<%st.close();
		cn.close();
		%>
		<%
			request.setAttribute("subject",sub);
			RequestDispatcher rd = request.getRequestDispatcher("/answersdao");
		%>
		</form>

 </body>
 </html>