package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
private Connection con;
	
	public Connection getConnection() { 
		return con; 
	}
	

	public DBConn() 
			throws ClassNotFoundException, SQLException {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");

		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
	}
	
	public void close() {
		try {
			if( con != null) {
				con.close();
				System.out.println("DB 연결 종료");
			}	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}


}
