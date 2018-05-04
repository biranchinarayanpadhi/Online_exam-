<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Select-admin</title>       
    </head>
    <body>
	<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
			
		if(session.getAttribute("username")==null&&session.getAttribute("password")==null)
			response.sendRedirect("adminlogin.jsp");
	%>
	    <br><br><br><br><br><br>
		<center><h1 style="color:D2691E">HELLO ADMIN-${username}</h1></center>
		<center>
		<h1 style="color:D2691E">View the details of</h1>
		<form action="optionadmin.jsp">
            <select name="select">
			<option  value="stud">Student_Result</option>
			<option  value="emp">Employe</option>
			<option  value="res">Student_Details</option>
		    </select>
        <input type="submit" value="submit">
		</form>
		</center>
		</body>
		</html>