<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<form action="process-student.jsp">
<center>
<h1>Registration</h1>
<table border="2" bgcolor="grey" style="color:blue">
<tr>
<td>First Name</td>
<td><input type="text" name="fname"></td>
</tr>
<tr>
<td>Email </td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Registration No</td>
<td><input type="text" name="regno"></td>
</tr>
<tr>
<td>Password(NUMERIC)</td>
<td><input type="text" name="pass"></td>
</tr>
<tr>
<td><input type="submit" value="Sign Up"></td>
<td><input type="reset" value="Reset"></td>
</tr>
</table>
</center>
</form>
</body>
</html>