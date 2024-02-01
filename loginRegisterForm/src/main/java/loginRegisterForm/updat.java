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
@WebServlet("/updateData")
public class updat extends  HttpServlet{
	protected void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException {
		
		String name = request.getParameter("name");
		String Education = request.getParameter("Education");
		String mobileno = request.getParameter("mobileNo");
		String gender = request.getParameter("gender");
		String DOB = request.getParameter("dob");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		String updateQuery = "update storeData set name=?,Education=?,gender=?,DOB=?,password=? where mobileno=?";
		try {
			connectionDatabase c = new connectionDatabase();
			c.DataBaseConnection();
			PreparedStatement ps2 = connectionDatabase.con.prepareStatement(updateQuery);
			ps2.setString(1,name);
			ps2.setString(2,Education);
			//ps2.setString(3,mobileno);
			ps2.setString(3,gender);
			ps2.setString(4,DOB);
			ps2.setString(5,password);
			ps2.setString(6,mobileno);
		    ps2.executeUpdate();
		    response.setContentType("text/html");
		    out.print("Successfull Data Update....");
			RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
			rd.include(request, response);
		}catch(Exception e) {
			response.setContentType("text/html");
		    out.print("Data Updation Fields....");
			RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
			rd.include(request, response);
		}
	}

}
