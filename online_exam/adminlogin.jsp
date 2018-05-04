<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Admin Login</title>
        <link href="login.css"  rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="div1">
            <div class="div1-1">
                <center><h1>ADMIN-LOGIN</h1></center>
            </div>
            <div class="div1-2">
                <h1><form action="adminlogin">
                    User-Name: <input type="textbox" placeholder="    Enter your first_name" name="uname"><br><br>&nbsp;&nbsp;
                    Password: <input type="password" name="pass" placeholder="    Enter your password"><br><br><br>
                    <input type="submit" value="LOGIN" style="margin-left:11rem; font-size:2rem; color:darkgoldenrod; background-color: black;">
                    </form></h1>
            </div>
        </div>
    </body>
</html>