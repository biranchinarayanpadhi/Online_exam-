import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException, ServletException
	{
		String uname=req.getParameter("uname");
		int pass=Integer.parseInt(req.getParameter("pass"));
		PrintWriter pw=res.getWriter();
		if (uname.equals("Deepak")&&pass==653049)
		{
				
				HttpSession session=req.getSession();
				session.setAttribute("password",pass);
				session.setAttribute("username",uname);
				res.sendRedirect("adminselect.jsp");
				
		}
		else
		{
			    res.sendRedirect("adminlogin.jsp");
		}
	}
}