package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MapDAO {

	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	// 데어터베이스와 연동(연결)해주는 메서드 생성
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
	
	
	// 데이터베이스와의 연결을 종료해주는 메서드 생성
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
	
	
}
