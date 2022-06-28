package member;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;


public class memberDAO {

	DataSource dataSource;
	
	public memberDAO() {
		try {
			InitialContext initialContext = new InitialContext();
			Context envContex = (Context) initialContext.lookup("java:/comp/env");
			dataSource = (DataSource) envContex.lookup("jdbc/bookstore");
		}catch(Exception e) {
			e.printStackTrace();
		}//try-catch -end
		
	}// memberDao -end
	
	public int login(String mem_id, String mem_pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "select * from mem_table where mem_id = ?";
		try {
			conn = dataSource.getConnection(); //커넥션풀접근
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("mem_pw").equals(mem_pw)) {
					return 1; //로그인 성공
				}
				return 2; //비밀번호가 틀림
			} else {
				return 0; //해당 사용자 없음
			}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}// finally-try-catch -end
			
		}// try-catch-finally -end
		
		return -1; //데이터베이스 오류
	}
	
	public int registerCheck(String mem_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "select * from mem_table where mem_id = ?";
		try {
			conn = dataSource.getConnection(); //커넥션풀접근
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if(rs.next() || mem_id.equals("")) { // 아이디가 존재하거나, 아이디가 공백일 경우
				return 0; //이미 존재하는 회원
			}else {
				return 1; //가입 가능한 회원 아이디
			}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}// finally-try-catch -end
			
		}// try-catch-finally -end
		
		return -1; //데이터베이스 오류
	}
	
	public int register(String mem_id, String mem_pw, String mem_name, String mem_pn, String mem_email, String mem_bd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String SQL = "insert into mem_table values(mem_SEQ.nextval, ?, ?, ?, ?, ?, ?)";
		try {
			conn = dataSource.getConnection(); //커넥션풀
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, mem_id);
			pstmt.setString(2, mem_name);
			pstmt.setString(3, mem_bd);
			pstmt.setString(4, mem_email);
			pstmt.setString(5, mem_pn);
			pstmt.setString(6, mem_pw);
			
			return pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {

				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}// finally-try-catch -end
			
		}// try-catch-finally -end
		
		return -1; //데이터베이스 오류
	}
	
	public memberDTO getMember(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String SQL = "select * from mem_table where mem_id = ?";
		memberDTO member = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				member = new memberDTO();
				member.setmem_id(rs.getString("mem_id"));
				member.setmem_pw(rs.getString("mem_pw"));
				member.setmem_name(rs.getString("mem_name"));
				member.setmem_email(rs.getString("mem_email"));
				member.setmem_pn(rs.getString("mem_pn"));
				member.setmem_bd(rs.getString("mem_bd"));
			}

			conn.close();
			pstmt.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return member;
	}
	
	public int admin_login(String mem_id, String mem_pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "select * from mem_table where mem_id = ?";
		try {
			conn = dataSource.getConnection(); //커넥션풀접근
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("mem_pw").equals(mem_pw)) {
					return 1; //로그인 성공
				}
				return 2; //비밀번호가 틀림
			} else {
				return 0; //해당 사용자 없음
			}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}// finally-try-catch -end
			
		}// try-catch-finally -end
		
		return -1; //데이터베이스 오류
	}
}
