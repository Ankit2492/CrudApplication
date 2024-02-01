package loginRegisterForm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class login extends HttpServlet {
	protected void doPost(HttpServletRequest request  , HttpServletResponse response) throws IOException, ServletException {
	
		String emaile = request.getParameter("email_YA_password");
		String getpassword = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		String selectQuery = "select * from register where email=? and password=?";

		try {
		
		Connection con = loginRegisterDatabaseConnection.loginRegisterConnection();

		PreparedStatement ps1 = con.prepareStatement(selectQuery);
		ps1.setString(1, emaile);
		ps1.setString(2, getpassword);
		ResultSet rs1 = ps1.executeQuery();
		
		if(rs1.next()) {
			
			 RequestDispatcher rs = request.getRequestDispatcher("/home.jsp");
			 rs.forward(request, response);
		
		}else {
			
			response.setContentType("text/html");
			out.print("Invalid password and Email please Check it");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.include(request, response);
		
		}
	}catch(Exception e) {
			
			out.println("<h3>Server on please...</h3>"+e);
			response.setContentType("text/html");
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.include(request, response);
		}
		

	}
	
}