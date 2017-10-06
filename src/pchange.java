

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class pchange
 */
@WebServlet("/pchange")
public class pchange extends HttpServlet {
	private static final long serialVersionUID = 1L;
Connection con;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/hisaria","root","");
			}catch(Exception ee){System.out.print(ee);}
		
		String s1,s2,s3="";
		String a1;
		int y;
		s1=request.getParameter("opwd");
		s2=request.getParameter("npwd");
		a1=request.getParameter("id");
		y=Integer.parseInt(a1);
		
		try{
			PreparedStatement stmt=con.prepareStatement("Select * from signup where id="+y+"");
			ResultSet rs=stmt.executeQuery();
			
			if(rs.next())
			{
				s3=rs.getString("password");
			}
			System.out.print("Data featched");
			}catch(Exception ee){System.out.println(ee);}
		
		if(s3.equals(s1))
		{
			try{
				System.out.println(y);
			PreparedStatement stmt=con.prepareStatement("UPDATE signup SET password='"+s2+"' where id="+y+"");
			stmt.executeUpdate();
		}catch(Exception ee){System.out.println(ee);}
			
			response.sendRedirect("profile.jsp?check=true");
		}
		else
		{
			PrintWriter out = response.getWriter();
			out.write("<script>\n");
			out.write("alert('Enter Correct old Password!!')");
			out.write("</script>\n");
			try{
				Thread.sleep(1000);
			}catch(Exception ee){System.out.println(ee);}
			response.sendRedirect("profile.jsp");
		}
	}

}
