package bookstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {

private Connection con;	
	
	
	public Connection getConnection() {
		return con;
	}
	
	public DBConn() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver"); // 드라이버 메모리로딩 선언
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:5151:xe", "book", "1234");
	}
}

	
