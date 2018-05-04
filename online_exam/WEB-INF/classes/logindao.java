
import java.sql.*;

public class logindao 
{
	String sql="select *from student where uname=? and pass=?";
			String username="system";
			String password="manager";
	public boolean check(String uname,int pass)
	{
	try{				
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",username,password);
	PreparedStatement ps=c.prepareStatement(sql);
	ps.setString(1,uname);
	ps.setInt(2,pass);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	  {
		return true;
	  }
	}
	 
	 catch(Exception e)
		{
		e.printStackTrace();
		}	
		
		return false;
	}
}