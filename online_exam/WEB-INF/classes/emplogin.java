import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/emplogin")
public class emplogin extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException, ServletException
	{
		String uname=req.getParameter("uname");
		int pass=Integer.parseInt(req.getParameter("pass"));
		PrintWriter pw=res.getWriter();
		emplogindao d=new emplogindao();
		if (d.check(uname,pass))
		{
				
				HttpSession session=req.getSession();
				session.setAttribute("password",pass);
				session.setAttribute("username",uname);
				res.sendRedirect("employe.jsp");
				
		}
		else
		{
			    res.sendRedirect("employlogin.jsp");
		}
	}
}