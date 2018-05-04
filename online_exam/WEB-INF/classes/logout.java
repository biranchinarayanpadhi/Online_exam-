import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/logout")
public class logout extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		HttpSession session=req.getSession();
		session.removeAttribute("username");
		session.removeAttribute("password");
		session.removeAttribute("subject");
		session.invalidate();
		
		res.sendRedirect("studentlogin.jsp");
	}
}