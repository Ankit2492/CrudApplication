package loginRegisterForm;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectionDatabase {
	
	static Connection con;
	
	void DataBaseConnection() {
		
		String url = "jdbc:mysql://localhost:3306/storeUserData";
		String username = "root";
		String password = "";
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection(url,username,password);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		//return con;
	}

}
