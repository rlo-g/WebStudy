package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	// 데이터베이스와 주고받는 역할 >> JDBC 담당 : Model
	
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
	
	
	
	// 회원가입 메서드
	public void join(MemberDTO member) {
		// MemberDTO를 매개변수 객체로 만들어서 꺼내온다
		getConnection();
		
		try {
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPw());
			psmt.setString(3, member.getNick());
			psmt.setString(4, member.getEmail());
			psmt.setString(5, member.getPhone());
			psmt.setString(6, member.getGender());
			psmt.setInt(7, member.getAge());
			
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		close();
	}
	
	
	
	// 로그인 메서드 
	// - 회원정보가 있는 경우, nick 반환
	// - 회원정보 없을 경우, null 반환
	public String login(String id, String pw) {
		// 반환하고자 하는 값의 형태 String (<< void)
		
		// 데이터베이스 연결
		getConnection();
		
		try {
			String sql = "SELECT NICK FROM MEMBER WHERE ID=? AND PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				// id. pw가 데이터에 있다면 nick 가져와서 반환하기
				return rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return null;     //조건문에 해당하지 않으면 null 값 반환(넘어감)
		
	}


	
		
	
	// 회원탈퇴 메서드
	public int delete(MemberDTO dto) {
		// 아이디와 비밀번호가 일치하는 계정을 찾아서 삭제
		// 삭제 성공 : 1 반환
		// 삭제 실패 : 0 반환
		
		int cnt = 0;
		getConnection();
		
		try {
			String sql = "DELETE FROM MEMBER WHERE ID=? AND PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());    // id, pw가 접근제한자 private로 묶여서 dto를 통해 넘어오기 때문에 dto.getID()
			psmt.setString(2, dto.getPw());
			
			cnt =  psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
	}


	
	
	
	
	// 회원 정보 수정 메서드
	public int update(MemberDTO dto) {
		// 회원 정보 수정 성공 > 1
		// 회원 정보 수정 실패 > 0 반환
		
		getConnection();
		
		// 정보수정 성공 여부를 알 수 있는 변수 생성 
		int cnt = 0;
		
		try {
			String sql = "UPDATE MEMBER SET NICK=?, EMAIL=?, PHONE=?, GENDER=?, AGE=? WHERE ID=? AND PW=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getNick());
			psmt.setString(2, dto.getEmail());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getGender());
			psmt.setInt(5, dto.getAge());
			psmt.setString(6, dto.getId());
			psmt.setString(7, dto.getPw());
			
			cnt = psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
		
	}
	
	
	
	
	// 회원 목록 보기 메서드
	public ArrayList<MemberDTO> select(){
		// 반환 타입 : ArrayList<MemberDTO>
		
		// ArrayList 객체 생성
		ArrayList<MemberDTO> list = new ArrayList<>();
		
		getConnection();
		
		try {
			String sql = "SELECT * FROM MEMBER";
			psmt = conn.prepareStatement(sql);
			
			// sql문에 채워줄 ?가 없으므로 바로 실행
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String nick = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				int age = rs.getInt(7);
				
				// 한 사람의 7개 정보를 dto로 묶어서 list에 담아준다
				MemberDTO dto = new MemberDTO(id, pw, nick, email, phone, gender, age);
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
	
	
	
}





