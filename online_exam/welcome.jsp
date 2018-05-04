<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome</title>
</head>
<body>
	<%

		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
			
		if(session.getAttribute("username")==null&&session.getAttribute("password")==null)
		{
			response.sendRedirect("studentlogin.jsp");
		}
		out.println(session.getAttribute("username"));
	%>
	<center><h1>WELCOME <h1 style="color:blue;">${username}!!!!</h1></h1></center>
	<center><h1>PASSWORD: <h1 style="color:blue;">${password}</h1></h1></center>
	<h2>Examination Instruction</h2><br>
	<h3>Timings::</h3>
	<h3>
   1.Examinations will be conducted during the allocated times shown in the examination timetable.<br><br>

     2.The examination hall will be open for admission 10 minutes before the time scheduled for the commencement of the examination. You are to find your allocated seat but do NOT turn over the question paper until instructed at the time of commencement of the examination.<br><br>

        3. You will not be admitted for the examination after one hour of the commencement of the examination.</h3><br>
<form action="checkbox">
<h2><input type="checkbox" name="value" value="bike" id="check">I Agree</h2><br>
<input type="submit" value="START" onclick="getcheck();">
</form>
<script>
		function getcheck(){
			var ch=document.getElementById('check');
			if(ch.checked==false)
				alert("please click on the box");
		}
</script>
	</body>
</html>