import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/logincontrol")
public class logincontrol extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException, ServletException
	{
		String name=req.getParameter("login");
		if(name.equals("stud"))
		{
			res.sendRedirect("studentlogin.jsp");
		}
		else if(name.equals("emp"))
		{
			res.sendRedirect("employlogin.jsp");
		}
		else
		{
			res.sendRedirect("adminlogin.jsp");
		}
		
			
	}
}
