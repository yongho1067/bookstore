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

		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:5151:xe","book","1234");
	}
	
	public void close() {
		try {
			if( con != null) {
				con.close();
				System.out.println("DB ���� ����");
			}	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}


}
