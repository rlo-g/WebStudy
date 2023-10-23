package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
		
	// 데이터베이스 연결메소드
	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@project-db-stu3.smhrd.com:1524:xe";
			String db_id = "Insa4_Spring_hacksim_6";
			String db_pw = "aishcool6";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("DB연결에 필요한 정보가 맞는지 체크하세요!");
		}

		
	}
	
	// 데이터베이스 종료메소드
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	// ID 중복 검사
	public boolean idCheck(String input) {
		getConnection();
		try {
			String sql = "SELECT * FROM MEMBER WHERE ID =?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, input);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				return true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return false;
	}
	
	// 닉네임 중복 검사
	public boolean nickCheck(String input) {
		getConnection();
		try {
			String sql = "SELECT * FROM MEMBER WHERE NICK =?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, input);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return false;
	}
	
	
	// 회원가입 메소드
		public void join(MemberDTO member) {
			//MemberDTO 객체를(sql문에 넣어줄 7가지 정보를 가지고 있는)매개변수로 넣어줌
			getConnection();
			
			try {
				String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,SYSDATE)";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, member.getId());
				psmt.setString(2, member.getPw());
				psmt.setString(3, member.getNick());
				psmt.setString(4, member.getEmail());
				
				psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			
		}
		
		
		// 로그인 메소드
		public MemberDTO login(MemberDTO dto) {
			MemberDTO info = null;
			getConnection();

			try {
				String sql = "SELECT * FROM MEMBER WHERE ID =? AND PW = ?";
				psmt = conn.prepareStatement(sql);

				psmt.setString(1, dto.getId());
				psmt.setString(2, dto.getPw());
				
				rs = psmt.executeQuery();
				
				if(rs.next()) {
					info = new MemberDTO(rs.getString("id"), rs.getString("pw"), rs.getString("nick"), rs.getString("email"));
				}
				

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close();
			}
			return info;
		}
		
		// 회원정보 수정
		public int update(MemberDTO changeInfo) {
			getConnection();
			int cnt = 0;
			
			try {
				String sql = "UPDATE MEMBER SET NICK=?, PW=? WHERE ID=? AND EMAIL=?";
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, changeInfo.getNick());
				psmt.setString(2, changeInfo.getPw());
				psmt.setString(3, changeInfo.getId());
				psmt.setString(4, changeInfo.getEmail());
				
				cnt = psmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			}
			return cnt;
		}
	
	
}
