import java.io.IOException;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/addqtn")
public class addqtn extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException, ServletException
	{
		String href="employe.jsp";
		String href1="emplogout";
		String submit="submit";
		String value="LOGOUT";
			res.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		final String sub=req.getSession().getAttribute("sub").toString();
		String question=req.getParameter("question");
		String option1=req.getParameter("option1");
		String option2=req.getParameter("option2");
		String option3=req.getParameter("option3");
		String option4=req.getParameter("option4");
		int correct=Integer.parseInt(req.getParameter("correct"));
		String sql="insert into " + sub + " values(?,?,?,?,?,?)";
		PrintWriter out=res.getWriter();
		try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	   Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
	   PreparedStatement ps=c.prepareStatement(sql);
	   ps.setString(1,question);
	   ps.setString(2,option1);
	   ps.setString(3,option2);
	   ps.setString(4,option3);
	   ps.setString(5,option4);
	   ps.setInt(6,correct);
	   int rs=ps.executeUpdate();
		
		if(rs==1)
			out.println("<html><head><title>Insertion</title></head><body>");
			out.println("<center><h1>Inserted</h1><br><h1><a href="+href+">Insert another</a></h1>");

			out.println("<form action="+"emplogout"+"><input style="+"font-size:20px;"+" type="+"submit"+" value="+"logout"+"></form></center></body></html>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}
}