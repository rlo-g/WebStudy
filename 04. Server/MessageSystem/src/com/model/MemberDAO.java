package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	// 데이터베이스와 주고받는 역할 >> JDBC 담당
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	
	// 데이터베이스 연동 메서드
	public void getConnection() {
		
		// 드라이버 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");


		// DB 로그인 정보 받아오기
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
			
		// 연결 권한 요청
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.err.println("DB 연결에 필요한 정보가 맞는지 체크하세요!");
		} 
	}
	
	
	// 데이터베이스 연결 종료 메서드
	public void close() {
		// 연결종료
		try {
			if(rs!=null) {
				rs.close();
			}
			if(psmt!=null){
				psmt.close();
			}
			if(conn!=null){
				conn.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}	
	
	
	// 회원가입
	public int join(MemberDTO dto) {
		
		int cnt = 0;
		getConnection();
		try {
			String sql = "INSERT INTO MSGMEMBER VALUES(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getAddr());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			// finally: 어떠한 상황에서도 무조건 실행되는 곳
			close();
		}
		return cnt;
		
	}


	// 로그인
	public MemberDTO login(MemberDTO dto) {

		MemberDTO info = null;
		
		// 데이터베이스 연결
		getConnection();
		
		try {
			String sql = "SELECT * FROM MSGMEMBER WHERE EMAIL=? AND PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				// 로그인 성공
				String email = rs.getString(1);
				String pw = rs.getString(2);
				String phone = rs.getString(3);
				String addr = rs.getString(4);
				
				// info 객체 생성
				info = new MemberDTO(email, pw, phone, addr);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return info;
	}


	
	
	
	// 회원정보수정
	public int update(MemberDTO changeInfo) {
		
		int cnt = 0;
		getConnection();
		
		try {
			String sql = "UPDATE MSGMEMBER SET PW=?,PHONE=?,ADDR=? WHERE EMAIL=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, changeInfo.getPw());
			psmt.setString(2, changeInfo.getPhone());
			psmt.setString(3, changeInfo.getAddr());
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
