package loginRegisterForm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class register extends HttpServlet{
	protected void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
	
		String full_name = request.getParameter("full_name");
		String email = request.getParameter("email");
		String language = request.getParameter("language");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String Password = request.getParameter("getpassword");
	
		PrintWriter out = response.getWriter();
		
		String insertQuery = "insert into register(name,email,language,gender,DOB,password) values(?,?,?,?,?,?)";
	try {
		
		Connection con = loginRegisterDatabaseConnection.loginRegisterConnection();

		
		PreparedStatement ps = con.prepareStatement(insertQuery);
		ps.setString(1, full_name);
		ps.setString(2, email);
		ps.setString(3, language);
		ps.setString(4, gender);
		ps.setString(5, dob);
		ps.setString(6,Password); 
	    ps.executeUpdate();

		response.setContentType("text/html");
		out.println("<h3>Successfull Register..</h3>");
		RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
		rd.include(request, response);

	}catch(Exception e) {
		
		response.setContentType("text/html");
		out.print("<h3>Email Id Exist Not Register...</h3>");
		RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
		rd.include(request, response);

	 }	
		
	}
	
}