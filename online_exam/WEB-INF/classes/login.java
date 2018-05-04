import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/login")
public class login extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException, ServletException
	{
		String uname=req.getParameter("uname");
		int pass=Integer.parseInt(req.getParameter("pass"));
		PrintWriter pw=res.getWriter();
		logindao d=new logindao();
		if (d.check(uname,pass))
		{
				
				HttpSession session=req.getSession();
				session.setAttribute("password",pass);
				session.setAttribute("username",uname);
				res.sendRedirect("welcome.jsp");
				
		}
		else
		{
			    res.sendRedirect("studentlogin.jsp");
		}
	}
}