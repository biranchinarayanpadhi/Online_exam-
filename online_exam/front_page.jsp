<html>
    <head>
        <title>Front Page</title>
        <style>
            body{
                background-image: url(sd3.jpg);
                background-repeat: no-repeat;
                background-position: center;
                background-size: 90rem 60rem;
            }
            h1{
                font-size: 50px;
            }
            h2{
                font-size: 30px;
            }
            h1,h2{
                color:darkgoldenrod;
            }
            input[type="submit"]{
                color:darkgoldenrod;
                font-size: 20px;
            }
            select{
                font-size:20px;
            }
			 .blink_me{
            animation-name: blink;
            animation-duration: 2s;
            animation-timing-function: linear;
            animation-iteration-count: infinite;
            
        }
        .blink_me:hover{
            animation-play-state: paused;
        }
        
        @keyframes blink{
            0%{opacity:1.0}
            50%{opacity:0.3}
            100%{opacity:1.0}
        }
        </style>
            
    </head>
    <body>
        <br><br><br><br><br><br><br><br><br>
        <center><h1 class="blink_me">WELCOME TO ONLINE EXAMINATION!!!</h1>
            <h2><b>Login As(Existing User)</b></h2>
        <form action="logincontrol">
            <select name="login">
                <option  value="stud">Student</option>
                <option  value="emp">Employ</option>
				<option  value="admin">Admin</option>
            </select>
            <input type="submit"  value="LOGIN">
            </form>
            <h2><b>Register(New User)</b></h2>
        <form action="regdcontrol">
            <select name="regd">
                <option  value="stud">Student</option>
                <option  value="emp">Employ</option>
            </select>
            <input type="submit"  value="Register">
            </form>
            
        </center>
    </body>
</html>