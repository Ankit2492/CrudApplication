package loginRegisterForm;

import java.sql.Connection;
import java.sql.DriverManager;

public class loginRegisterDatabaseConnection {
	
	 static Connection con;
	
	public static Connection loginRegisterConnection() {
	
		String url = "jdbc:mysql://localhost:3306/registerCheck";
		String username = "root";
		String password = "";
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url,username,password);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
