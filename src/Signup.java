

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//database connection
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/hisaria","root","");
			}catch(Exception ee){System.out.print(ee);}
		
		String s1,s2,s3,s4;
		s1=request.getParameter("user");
		s2=request.getParameter("pwd");
		s3=request.getParameter("eno");
		s4=request.getParameter("email");
		
		try{
			PreparedStatement stmt=con.prepareStatement("Insert into signup (username,password,enrollment,email)"
					+ "values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
			stmt.executeUpdate();
			System.out.print("Data Inserted");
			}catch(Exception ee){System.out.println(ee);}
		
		response.sendRedirect("index.jsp");
		
	}

}
