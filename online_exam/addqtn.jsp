<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add</title>
<style>
.mytext{
width:300px;
height:100px;
}
</style>
</head>
<body>
<center>
    
	<h1 style="color:GREEN">Add Question !!</h1>
	<form action="addqtn">
	<%

	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");

		String sub=request.getParameter("subjects");
		session.setAttribute("sub",sub);
	%>
	<h2>Enter the question:</h2><input type="text" class="mytext" maxlength="100" name="question"><br>
	<h3>Option1:</h3><input maxlength="40" type="text" name="option1">
	<h3>Option2:</h3><input type="text" maxlength="40" name="option2">
	<h3>Option3:</h3><input type="text" maxlength="40" name="option3">
	<h3>Option4:</h3><input type="text" maxlength="40" name="option4">
	<h3>Correct Option(Numeric):</h3><input type="text" placeholder="e.g 1 or 2 or 3.." name="correct"><br><br>
		<input type="submit" value="Insert">
	</form>
</center>
    </body>
    </html>