<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		// id, pw, nick, email, phone, gender, age
		// 위의 값을 먼저 다 가져온 다음
		// id, pw 일치하는 계정을 찾아
		// 입력한 nick, email, phone, gender, age를 수정
		
		// 수정 성공 시 > main.jsp
		// 수정 실패 시 > update.jsp 이동
		
		
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// 정보변경 성공 여부를 알 수 있는 변수 생성
		int cnt = 0;
		
		// 동적로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// DB가 존재하는 url, 아이디, 비밀번호
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		// 연결권한 가져오기
		Connection conn = DriverManager.getConnection(db_url,db_id,db_pw);
		
		// update 테이블명 set 컬럼명=?,컬럼명=?,컬럼명=? where 컬럼명=? and 컬럼명=?;
		String sql = "UPDATE MEMBER SET nick = ?, email = ?, phone = ?, gender = ?, age = ? WHERE id = ? AND pw = ?";
		
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, nick);
		psmt.setString(2, email);
		psmt.setString(3, phone);
		psmt.setString(4, gender);
		psmt.setInt(5, age);
		psmt.setString(6, id);
		psmt.setString(7, pw);
		
		cnt = psmt.executeUpdate();
		
		if(psmt!=null){
			psmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		
		if(cnt>0){
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("update.jsp");
		}

		
	
	
	%>
</body>
</html>