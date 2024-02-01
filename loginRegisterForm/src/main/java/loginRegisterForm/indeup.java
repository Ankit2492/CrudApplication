package loginRegisterForm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/insertData")
public class indeup extends HttpServlet{
	protected void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException {
		
		String name1 = request.getParameter("name");
		String Education = request.getParameter("Education");
		String mobile_No = request.getParameter("mobileNo");
		String gender = request.getParameter("gender");
		String DOB = request.getParameter("dob");
		String password = request.getParameter("password");
		
		String insertQuery = "insert into storeData(name,Education,mobileno,gender,DOB,password)values(?,?,?,?,?,?)";
		PrintWriter out = response.getWriter();
		try {
			connectionDatabase c = new connectionDatabase();
			c.DataBaseConnection();
			PreparedStatement ps2 = connectionDatabase.con.prepareStatement(insertQuery);
			ps2.setString(1, name1);
			ps2.setString(2, Education);
			ps2.setString(3, mobile_No);
			ps2.setString(4, gender);
			ps2.setString(5, DOB);
			ps2.setString(6, password);
			ps2.executeUpdate();
			
			response.setContentType("text/html");
			//request.setAttribute("key",1);
			out.print("<big style= 'color:green'>successfull Data Insert...</big>");
			RequestDispatcher rd = request.getRequestDispatcher("/insert.jsp");
			rd.include(request, response);
		}catch(Exception e) {
			response.setContentType("text/html");
			//request.setAttribute("key",2);
			out.print("<big style='color:red'>user Allrady Exist this Mobile Number</big> "+e);
			RequestDispatcher rd = request.getRequestDispatcher("/insert.jsp");
			rd.include(request, response);
		}
		
	}

}
