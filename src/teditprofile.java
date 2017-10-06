

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class editprofile
 */
@WebServlet("/teditprofile")
public class teditprofile extends HttpServlet {
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
		
		String s1,s2,s3,s4,a1;
		int y;
		s1=request.getParameter("e1");
		s2=request.getParameter("e2");
		s3=request.getParameter("e3");
		s4=request.getParameter("e4");
		a1=request.getParameter("id");
		y=Integer.parseInt(a1);
		
		try{
			PreparedStatement stmt=con.prepareStatement("UPDATE tlogin SET username='"+s1+"' , department='"+s2+"' , dob='"+s3+"' , foi='"+s4+"' where id="+y+"");
			stmt.executeUpdate();
		}catch(Exception ee){System.out.println(ee);}
		
		request.setAttribute("department", s2);
		request.setAttribute("dob", s3);
		request.setAttribute("foi", s4);
		RequestDispatcher rd=request.getRequestDispatcher("tprofile.jsp");
		rd.forward(request, response);
		
		response.sendRedirect("tprofile.jsp?ep=true");
		
		
	}

}
