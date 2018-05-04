import java.io.IOException;
import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/checkbox")
public class checkbox extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException,NullPointerException
	{
		String check=req.getParameter("value");
		System.out.println(check==null);
		
		if(check==null)
		{
			check="a";
			if(check.equals("a"))
			{
				res.sendRedirect("welcome.jsp");
			}
		}
		else
		{
			res.sendRedirect("subject.jsp");
		}
	}
	}