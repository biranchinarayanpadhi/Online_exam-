import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/regdcontrol")
public class regdcontrol extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException, ServletException
	{
		String name=req.getParameter("regd");
		if(name.equals("stud"))
		{
			res.sendRedirect("regdstudent.jsp");
		}
		else
		{
			res.sendRedirect("regforemp.jsp");
		}
		
			
	}
}
