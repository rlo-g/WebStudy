package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;import oracle.jdbc.driver.Message;

public class MessageDAO {

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
	
	
	// 메세지 전송 메서드


	public int send(MessageDTO dto) {
		
		int cnt = 0;
		getConnection();
		
		try {
			// DTO에 세 개의 값이 저장되어 있음
			// SQL문에서 MSG_NUM.NEXTVAL, SYSDATE는 고정되어 있음
			String sql = "INSERT INTO MESSAGE VALUES(MSG_NUM.NEXTVAL,?,?,?,SYSDATE)";
			psmt = conn.prepareStatement(sql);
				
			psmt.setString(1, dto.getSend_name());
			psmt.setString(2, dto.getReceive_email());
			psmt.setString(3, dto.getContent());
			
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}	
	
	
	
	// 회원 별 메세지 확인 메서드
	public ArrayList<MessageDTO> select(String email){
		// 매개변수로 로그인 한 이메일 값을 받아옴
		
		// arraylist 객체 생성
		ArrayList<MessageDTO> list = new ArrayList<>();
		
		getConnection();
		
		try {
			// ORDER BY 컬럼명 DESC : 컬럼명 기준 내림차순
			String sql = "SELECT * FROM MESSAGE WHERE RECEIVE_EMAIL=? ORDER BY SEND_DATE DESC";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			
			// 데이터가 없을 때까지 rs.next() 반복
			while(rs.next()){
				// 데이터 존재 시, 각 컬럼에 저장된 값 가져오기
				int num = rs.getInt("num");
				String send_name = rs.getString("send_name");
				String receive_email = rs.getString("receive_email");
				String content = rs.getString("content");
				String send_date = rs.getString("send_date");
				
				// 가져온 다섯개의 값을 list에 담아주기 위해서 MessageDTO로 묶어준다
				MessageDTO dto = new MessageDTO(num, send_name, receive_email, content, send_date);
				list.add(dto);
			}
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
		
	}


	
	// 회원 별 메세지 전체 삭제 메서드
	public void allDelete(String email) {
		// 메서드를 사용할 때 info에 있는 email 값을 가져오기(info.getEmail()) 때문에 email이 매개변수
		
		getConnection();
		
		try {
			String sql = "DELETE FROM MESSAGE WHERE RECEIVE_EMAIL=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, email);
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}


	// 회원 별 메세지 부분 삭제 메서드
	public void delete(int num) {
		// TODO Auto-generated method stub
		
		getConnection();
		
		
		try {
			String sql = "DELETE FROM MESSAGE WHERE NUM=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, num);
			
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	
	
}
