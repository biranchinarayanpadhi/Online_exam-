<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selection</title>
</head>
<body>
<center>
    <br><br><br><br><br><br><br><br><br><br><br>
    <h1 style="color:#D2691E">Hello ${username}</h1>
	<h2>Select the subject:</h2>
	<form action="addqtn.jsp">
		<select name="subjects">
			<option  value="java">JAVA</option>
			<option  value="c">C</option>
			<option  value="cd">COMPILER DESIGN</option>
			
		</select>
        <input type="submit" value="Proceed">
	</form>
</center>
    </body>
    </html>