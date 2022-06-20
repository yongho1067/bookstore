package bookinfoDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BookInfoDBConn {
	private Connection con;
	
	public Connection getConnection() {
		return con;
	}
	
	public  BookInfoDBConn() throws ClassNotFoundException, SQLException {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@218.147.188.19:1521:xe", "c##book", "1234");
	}
}
