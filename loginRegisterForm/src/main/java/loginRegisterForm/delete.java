package loginRegisterForm;

import java.io.IOException;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/delete")
public class delete extends HttpServlet{

	protected void doGet(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
	  String deleteId =request.getParameter("id");
	  String deleteQuery = "delete from storeData where mobileno = ?";
	  try {
		  connectionDatabase c = new connectionDatabase();
			c.DataBaseConnection();
		  PreparedStatement ps2 = connectionDatabase.con.prepareStatement(deleteQuery);
		  ps2.setString(1, deleteId);
		  ps2.executeUpdate();
		  response.setContentType("text/html");
		  request.setAttribute("outkey","Successfull Insert Data....");
		  RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
		  rd.include(request, response);
		 
	  }catch(Exception e) {
		  response.setContentType("text/html");
		  request.setAttribute("outkey","Delewtion Fields....");
		  RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
		  rd.include(request, response);
	  }
	}
}
