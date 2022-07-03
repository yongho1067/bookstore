package adminDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class AdminDBConn {

private Connection con;
	
	public Connection getConnection() {
		return con;
	}
	
	public AdminDBConn() throws ClassNotFoundException, SQLException {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:5151:xe", "book", "1234");
		
		
	}
	
}





