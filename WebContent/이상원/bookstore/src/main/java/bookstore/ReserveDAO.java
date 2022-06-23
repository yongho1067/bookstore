package bookstore;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReserveDAO {
	
	private Connection con;
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	
	public ReserveDAO() throws ClassNotFoundException, SQLException {
		con = new DBConn().getConnection();
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
	
	
	//장바구니 DB 입력
	public boolean insert_reserve(String sell_price, String amount, String sum, String address, String address_detail) {
		String sql = "insert into basket_table(bas_count,bas_total,bas_address_1,bas_address_2) values(?,?,?,?)";
		
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, amount);
			pstmt.setString(2, sum);
			pstmt.setString(3, address);
			pstmt.setString(4, address_detail);
			
			
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}
	
	
	
	// 주문내역 확인
	
	public ArrayList<CartDTO> orderList(int bas_order) throws SQLException {
		// TODO Auto-generated method stub
		ArrayList<CartDTO> odlist = null;
		String sql = "SELECT * FROM basket_table WHERE bas_order = ?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, bas_order);		
		
		rs = pstmt.executeQuery();
		
		
		int cnt = 0;
		while(rs.next()) {
			cnt ++;
			
			if(cnt == 1) {
				odlist = new ArrayList<CartDTO>();
			}  
				
			CartDTO cdto = new CartDTO();
			
			cdto.setAmount(rs.getString("bas_count"));
			cdto.setBas_total(rs.getString("bas_total"));
			cdto.setSum(rs.getString("bas_total"));
			cdto.setBas_count(rs.getString("bas_count"));
			cdto.setBas_order(rs.getInt("bas_order"));
			
			odlist.add(cdto);
			
		}
		return odlist;
		
		
	}
	
	/*
	//주소입력
	
	public boolean insert_address(String address, String address_detail) {
		// TODO Auto-generated method stub
		
		String sql = "insert into basket_table(bas_address_1,bas_address_2) values(?,?)";
		
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, address);
			pstmt.setString(2, address_detail);
			
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}
	
	*/


	
	
}
