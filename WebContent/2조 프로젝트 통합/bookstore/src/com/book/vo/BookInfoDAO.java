package bookinfoDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.book.vo.AllInfoVO;
import com.book.vo.BookInfoVO;
import com.book.vo.ListInfoVO;
import com.book.vo.ReviewVO;
import com.book.vo.SearchInfoVO;

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
			String image = rs.getString(12);
			
		 tv = new BookInfoVO(id, name, cc, janre, date, author, pb, price,
				 grade, count,  example, image);
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
		String sql = "select * from grade_table";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			String id = rs.getString("mem_id");
			int grade = rs.getInt("BO_GRADE");
			String comment = rs.getString("COMMENT_");
			
			
			ReviewVO tiv = new ReviewVO(id, grade, comment);
			
			tiarray.add(tiv);
		}
		
		return tiarray;
	}
	
	public  ArrayList<SearchInfoVO> SearchBook(String keyword) throws SQLException{
		ArrayList<SearchInfoVO> tiarray = new ArrayList<SearchInfoVO>();
		String sql = "SELECT * FROM book_table";
		
		if(keyword != null && !keyword.isEmpty()) {
			sql += " WHERE BO_NAME LIKE '%'||?||'%'";
		}

		
		pstmt = con.prepareStatement(sql);
		
		if(keyword != null && !keyword.isEmpty()) {
			pstmt.setString(1, keyword);
		}
		rs = pstmt.executeQuery();
		while(rs.next()) {
			
			int idx =1;
			
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
			
			SearchInfoVO tv = new SearchInfoVO(id, name, cc, janre, date, author, pb, price,
				 grade, count,  example);
		 
		 tiarray.add(tv);
			}
			return tiarray;
	}
			public  ArrayList<ListInfoVO> ListInfo(String janre1) throws SQLException{
				ArrayList<ListInfoVO> tiarray = new ArrayList<ListInfoVO>();
				String sql = "SELECT * FROM book_table where bo_janre= ?";

				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, janre1);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					
					
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
					
				 ListInfoVO tv = new ListInfoVO(id, name, cc, janre, date, author, pb, price,
						 grade, count,  example);
				 
				 tiarray.add(tv);
					}
					return tiarray;
				}
			
		public boolean 	ReviewAddInsert (String mem_id, int bo_id, int bo_grade, String comment_) throws SQLException  {
			String sql = "insert into grade_table values(?,?,?,?)";
		
				System.out.println(bo_grade);
				System.out.println(comment_);

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, mem_id);
				pstmt.setInt(2, bo_id);
				pstmt.setInt(3, bo_grade);
				pstmt.setString(4, comment_);
		
				pstmt.executeUpdate();
			
			return true;
		}
		}
