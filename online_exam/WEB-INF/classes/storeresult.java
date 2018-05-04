import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
@WebServlet("/storeresult")
public class storeresult extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException,ServletException
	{
		HttpSession session=req.getSession();
		int c=(Integer)req.getAttribute("result");
		String subject=(String)req.getAttribute("subject");
		String name=(String)session.getAttribute("username");
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("<html><head><style>table, th, td { border: 1px solid black;border-collapse: collapse;}th, td {padding: 5px;text-align: left;}");
out.println("</style></head><body><h2>Results:</h2><center><table><tr><th>Name</th><th>Subject</th><th>Result</th></tr>");
out.println("<tr><td>"+name+"</td><td>"+subject+"</td><td>"+c+"</td></tr></table></center></body></html>");

		String sql="insert into admin values(?,?,?)";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1,name);
	ps.setString(2,subject);
	ps.setInt(3,c);
	ResultSet rs=ps.executeQuery();
		}
		catch(Exception e)
			{
			e.printStackTrace();
		}

out.println("<html><head></head><body><form action="+"logout"+"><input type="+"submit"+" value="+"logout"+"></form>");
	}

}