package bookinfoDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.book.vo.AllInfoVO;
import com.book.vo.BookInfoVO;
import com.book.vo.CartDTO;
import com.book.vo.ReviewVO;

import bookinfoDBConn.BookInfoDBConn;


public class BookInfoDAO {
	private Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public BookInfoDAO() throws ClassNotFoundException, SQLException {
		con = new  BookInfoDBConn().getConnection();
	}
	
	public void pstmtClose() throws SQLException {
		if(pstmt != null) {
			pstmt.close();
		}
	}
	
	public void getAllInfoClose() throws SQLException {
		if(rs != null) {
			rs.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(con != null) {
			con.close();
		}
	}
	
	public  BookInfoVO getInfo(int id1) throws SQLException{
		BookInfoVO tv= null;
		String sql = "SELECT * FROM book_table where bo_id= ?";

		
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id1);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			
			
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String cc = rs.getString(3);
			String janre = rs.getString(4);
			Date date = rs.getDate(5);
			String author = rs.getString(6);
			String pb = rs.getString(7);
			int price = rs.getInt(8);
			double grade = rs.getDouble(9);
			int count = rs.getInt(10);
			String example = rs.getString(11);
			
		 tv = new BookInfoVO(id, name, cc, janre, date, author, pb, price,
				 grade, count,  example);
			}else {
				tv = null;
			}
			return tv;
		}
		
	
	public ArrayList<AllInfoVO> BookgetAllInfo() throws SQLException{
		ArrayList<AllInfoVO> tiarray = new ArrayList<AllInfoVO>();
		String sql = "SELECT * FROM book_table order by bo_id";

		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {

			int id = rs.getInt("bo_id");
			String name = rs.getString("bo_name");
			String cc = rs.getString("bo_cc");
			String janre = rs.getString("bo_janre");
			Date date = rs.getDate("bo_date");
			String author = rs.getString("bo_author");
			String pb = rs.getString("bo_pb");
			int price = rs.getInt("bo_price");
			double grade = rs.getDouble("bo_grade");
			int count = rs.getInt("bo_count");
			String example = rs.getString("bo_ex");
			
			AllInfoVO tiv = new AllInfoVO(id, name, cc, janre, date, author, pb, price,
					grade, count,  example);
			
			
			tiarray.add(tiv);
		}
		
		return tiarray;
	}
	
	public ArrayList<ReviewVO> BookgetReviewInfo() throws SQLException{
		ArrayList<ReviewVO> tiarray = new ArrayList<ReviewVO>();
		String sql = "select * from grade_table order by mem_id_num";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			int id = rs.getInt("mem_id_num");
			int grade = rs.getInt("BO_GRADE");
			String comment = rs.getString("COMMENT_");
			
			
			ReviewVO tiv = new ReviewVO(id, grade, comment);
			
			tiarray.add(tiv);
		}
		
		return tiarray;
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
