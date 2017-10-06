

import java.io.IOException;
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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
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
		
		
		String s1,s2,s3="",s4="",s5="";
		int a=0;
		s1=request.getParameter("userlogin");
		s2=request.getParameter("pwdlogin");
		
		try{
			PreparedStatement stmt=con.prepareStatement("Select * from signup where username='"+s1+"' and password='"+s2+"'");
			ResultSet rs=stmt.executeQuery();
			
			if(rs.next())
			{
				s3=rs.getString(1);
				s4=rs.getString(2);
				s5=rs.getString(3);
				a=rs.getInt(4);
			}
			System.out.print("Data featched");
			}catch(Exception ee){System.out.println(ee);}
		
		if(s1.equals(s3) && s2.equals(s4))
		{
			HttpSession session=request.getSession();  
	        
			session.setAttribute("user",s1);
	        
	        //request.setAttribute("pass", s4);
	        session.setAttribute("enroll", s5);
	        session.setAttribute("id", a);
	        
	        response.sendRedirect("profile.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp?id=false");
		}
		
	}

}
