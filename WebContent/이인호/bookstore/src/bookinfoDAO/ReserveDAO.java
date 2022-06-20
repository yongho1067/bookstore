package bookinfoDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.book.vo.CartDTO;

import bookinfoDBConn.BookInfoDBConn;

public class ReserveDAO {
	
	private Connection con;
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ReserveDAO() throws ClassNotFoundException, SQLException {
		con = new BookInfoDBConn().getConnection();
	}
	public void pstmtClose() throws SQLException {
		if(pstmt != null)
			pstmt.close();
	}
	public void reserveClose() throws SQLException {
		if(rs != null)
			rs.close();
		if(pstmt != null)
			pstmt.close();
		if(con != null)
			con.close();
	}
	
	public boolean insert_reserve(String sell_price, String amount, String sum) {
		String sql = "insert into basket_table(bas_count,bas_total) values(?,?)";
		
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, amount);
			pstmt.setString(2, sum);
			
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}
	
	
	public ArrayList<CartDTO> orderList() throws SQLException {
		// TODO Auto-generated method stub
		ArrayList<CartDTO> odlist = new ArrayList<CartDTO>();
		String sql = "SELECT * FROM basket_table order by bas_order";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			int bas_order = rs.getInt("bas_order");
			String bas_count = rs.getString("bas_count");
			String bas_total = rs.getString("bas_total");
			int bo_id = rs.getInt("bo_id");
			int mem_id_num = rs.getInt("mem_id_num");
			
			CartDTO cdto = new CartDTO(bas_order,bas_count,bas_total,bo_id,mem_id_num);
			
			odlist.add(cdto);
			
		}
		return odlist;
		
		
	}

	
	
}
