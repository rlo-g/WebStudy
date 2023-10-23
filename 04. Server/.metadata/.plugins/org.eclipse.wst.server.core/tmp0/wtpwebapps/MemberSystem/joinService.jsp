<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		// 문제
		// 회원가입 후 main 페이지로 돌아가는 기능을 완성하시오
		
	
		// 넘어온 데이터를 기준으로 JDBC를 통해 테이블에 값 넣기 (회원가입)
		// 넘어오는 데이터 : id, pw, nick, email, phone, gender, age
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// <JDBC 순서>
		// 0. 드라이버 파일 프로젝트에 넣기 (java와 다르게 파일 복붙)
		
		// 1. 드라이버 동적로딩
		Class.forName("oracle.jdbc.driver.OracleDriver"); // try-catch문 필요 없음!!
		
		
		// 2. 커넥션 연결
		// DB 로그인 정보 받아오기
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
			
		// 연결 권한 요청
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw); 
				//try-catch문 사용 안 하므로 null 값 담지 않아도 됨
		
		// 3. SQL문 실행

		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
			
	     // SQL문을 실행하거나 ?를 채워줄 수 있는 객체
		PreparedStatement psmt = conn.prepareStatement(sql);
			
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, email);
		psmt.setString(5, phone);
		psmt.setString(6, gender);
		psmt.setInt(7, age);
		
		// 실행
		psmt.executeUpdate();	
		
		
		// 4. 연결종료
		if(psmt!=null){
			psmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		
		
		// 회원가입 성공 시, 메인페이지 url로 접속
		response.sendRedirect("main.jsp");

	
		
	
	%>
</body>
</html>