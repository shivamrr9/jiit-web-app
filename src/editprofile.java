import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class editprofile
 */
@WebServlet("/editprofile")
public class editprofile extends HttpServlet {
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
		
		String s1,s2,s3,s4,s5,a1;
		int y;
		s1=request.getParameter("e1");
		s2=request.getParameter("e2");
		s3=request.getParameter("e3");
		s4=request.getParameter("e4");
		s5=request.getParameter("e5");
		a1=request.getParameter("id");
		y=Integer.parseInt(a1);
		
		try{
			PreparedStatement stmt=con.prepareStatement("UPDATE signup SET username='"+s1+"' , enrollment='"+s2+"' , dob='"+s3+"' , batch='"+s4+"' , email='"+s5+"' where id="+y+"");
			stmt.executeUpdate();
		}catch(Exception ee){System.out.println(ee);}
		
		HttpSession session=request.getSession();  
        
		session.setAttribute("dob",s3);
		session.setAttribute("batch",s4);
		session.setAttribute("email", s5);
		
		response.sendRedirect("profile.jsp?ep=true");
		
		
	}

}