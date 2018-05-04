import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/adminlogout")
public class adminlogout extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		HttpSession session=req.getSession();
		session.removeAttribute("username");
		session.removeAttribute("password");
		session.invalidate();
		
		res.sendRedirect("adminlogin.jsp");
	}
}