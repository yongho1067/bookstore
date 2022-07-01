package adminDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminDBConn.AdminDBConn;
import adminVO.AdminVO;
import adminDBConn.AdminDBConn;

public class AdminDAO {
	
	private Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public AdminDAO() throws ClassNotFoundException, SQLException {
		con = new AdminDBConn().getConnection();
	}

	public ArrayList<AdminVO> getBookList() throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		ArrayList<AdminVO> odlist = new ArrayList<AdminVO>();
		String sql = "SELECT * FROM book_table order by BO_ID";

		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			int Bo_id = rs.getInt("bo_id");
			String Bo_name = rs.getString("bo_name");
			String Bo_janre = rs.getString("bo_janre");
			String Bo_cc = rs.getString("bo_cc");
			

			AdminVO cdto = new AdminVO(Bo_id, Bo_name, Bo_janre, Bo_cc, null, Bo_cc, Bo_cc, Bo_id, Bo_id, Bo_id, Bo_cc);

			odlist.add(cdto);

		}
		return odlist;

	}

	public boolean BookAdd(int Bo_id,String Bo_name, String Bo_janre, String Bo_pb, String Bo_author,String bo_date, String Bo_cc, int Bo_price, int Bo_count, String Bo_ex) {
		String sql = "insert into book_table(bo_id,bo_name,bo_janre,bo_pb,bo_author,bo_date,bo_cc,bo_price,bo_count,bo_ex) values(num_seq.nextval,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Bo_id);
			pstmt.setString(2, Bo_name);
			pstmt.setString(3, Bo_janre);;
			pstmt.setString(4, Bo_pb);
			pstmt.setString(5, Bo_author);
		    pstmt.setString(6,bo_date); 
			pstmt.setString(7, Bo_cc);
			pstmt.setInt(8, Bo_price);
			pstmt.setInt(9, Bo_count);
			pstmt.setString(10, Bo_ex);
			
			 

			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}

	public boolean BookDelete(int bo_id) throws SQLException {
		String sql = "DELETE book_table WHERE bo_id = ?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, bo_id);
		pstmt.executeUpdate();
		return true;
	}

	
	}

	
		
	

	
	

