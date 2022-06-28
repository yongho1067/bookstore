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
	public boolean insert_reserve(String cartId, String sell_price, String amount, String sum, String address, String address_detail) {
		String sql = "insert into basket_table(bas_order,bas_count,bas_total,bas_address_1,bas_address_2) values(?,?,?,?,?)";
		
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cartId);
			pstmt.setString(2, amount);
			pstmt.setString(3, sum);
			pstmt.setString(4, address);
			pstmt.setString(5, address_detail);
			
			
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
	
	public ArrayList<CartDTO> orderlist(String cartId_check) throws SQLException {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM basket_table where bas_order = ?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, cartId_check);
		
		rs = pstmt.executeQuery();
		
		ArrayList<CartDTO> odlist = new ArrayList<CartDTO>();
		
		while(rs.next()) {			
	
			CartDTO dto = new CartDTO();
			
			dto.setBas_order(rs.getString("bas_order"));
			dto.setAmount(rs.getString("bas_count"));
			dto.setSum(rs.getString("bas_total"));
			dto.setBas_address_1(rs.getString("bas_address_1"));
			dto.setBas_address_2(rs.getString("bas_address_2"));

	
			odlist.add(dto);
			
			System.out.println(odlist);
			
		
		}
		return odlist;
		
		
		
	}
	public void orderList1(String cartId_check) {
		// TODO Auto-generated method stub
		
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
