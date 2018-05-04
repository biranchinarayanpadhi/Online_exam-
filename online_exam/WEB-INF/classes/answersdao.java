import java.io.IOException;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
@WebServlet("/answersdao")
public class answersdao extends HttpServlet
{
	protected void doGet(HttpServletRequest req
		,HttpServletResponse res)throws IOException,ServletException
	{
		int c=0,sum=0;
		String A[]=(req.getParameterValues("A[]"));
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String sub = req.getSession().getAttribute("subject").toString();
		String name = req.getSession().getAttribute("username").toString();
		System.out.println(sub);
		String sql="select *from " + sub + "";
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			out.println(A.length);
				while(rs.next()&&(c<A.length))
			{
					if(Integer.parseInt(A[c])==rs.getInt(6))
					sum++;
					
				c++;
			}			

		}
		catch (ClassNotFoundException E)
		{
			E.printStackTrace();
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}

		req.setAttribute("result",sum);
		req.setAttribute("subject",sub);
		RequestDispatcher rd = req.getRequestDispatcher("/storeresult");
			rd.forward(req,res);
	}

}