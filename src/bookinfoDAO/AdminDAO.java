package bookinfoDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.book.vo.AdminVO;

import bookinfoDBConn.BookInfoDBConn;

public class AdminDAO {
	private Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public AdminDAO() throws ClassNotFoundException, SQLException {
		con = new BookInfoDBConn().getConnection();
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

			AdminVO cdto = new AdminVO(Bo_id, Bo_name, Bo_janre, Bo_cc, Bo_id, Bo_cc, Bo_cc, Bo_id, Bo_id, Bo_id,
					Bo_cc);

			odlist.add(cdto);

		}
		return odlist;

	}

	public boolean BookAdd_insert(String Bo_name, String Bo_pb, String Bo_cc, int Bo_price, int Bo_count) {
		String sql = "insert into book_table(bo_id,bo_name,bo_cc,bo_pb,bo_price,bo_count) value(num_seq.nextval,?,?,?,?,?)";
		PreparedStatement pstmt = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Bo_name);
			pstmt.setString(2, Bo_pb);
			pstmt.setString(3, Bo_cc);
			pstmt.setInt(4, Bo_price);
			pstmt.setInt(5, Bo_count);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}

	public boolean BookDelete(String name) throws SQLException {
		String sql = "DELETE book_table WHERE name = ?";

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.executeUpdate();
		return true;
	}

	public boolean update_all(int Bo_id, String Bo_name, String Bo_pb, String Bo_cc, int Bo_price, int Bo_count) throws SQLException {
		String sql = "update book_table set Bo_id=?, Bo_name=?, Bo_pb=?, Bo_cc, Bo_price, Bo_count where Bo_name=?";

		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, Bo_name);
		pstmt.setString(2, Bo_pb);
		pstmt.setString(3, Bo_cc);
		pstmt.setInt(4, Bo_price);
		pstmt.setInt(5, Bo_count);

		pstmt.executeUpdate();

		return true;
	}

}