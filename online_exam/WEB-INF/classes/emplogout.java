import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/emplogout")
public class emplogout extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		HttpSession session=req.getSession();
		session.removeAttribute("username");
		session.removeAttribute("password");
		session.invalidate();
		
		res.sendRedirect("employlogin.jsp");
	}
}