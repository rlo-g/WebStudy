<%@page import="java.sql.ResultSet"%>
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
	<%-- id, pw 값 가져오기
		id, pw 일치하는 회원의 정보 삭제
		삭제 성공 시 >> main.jsp
		삭제 실패 시 >> delete.jsp 이동 --%>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 회원탈퇴 성공 실패 여부를 알 수 있는 변수 생성
		int cnt = 0;
		
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
		
		// DB 로그인 정보 받아오기
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
			
		// 연결 권한 요청
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw); 

		String sql = "DELETE FROM MEMBER WHERE id = ? AND pw = ?";
				
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1,id);
		psmt.setString(2,pw);
				
		// psmt : 문장 실행 성공 시 1, 실패 시 0을 반환함
		cnt = psmt.executeUpdate();
		
		if(psmt!=null){
			psmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		
		if(cnt > 0){
			// 회원탈퇴 성공
			
			// alert(); 창 띄우기 (response.sendRedirect() 안 쓰는 경우)
			out.print("<script>");
			out.print("alert('회원 탈퇴 성공!');");
			out.print("location.href='main.jsp'");  // js에서 페이지 이동하는 방법
			out.print("</script>");
			// response.sendRedirect("main.jsp");
		}else{
			// 실패
			response.sendRedirect("delete.jsp");
		}
		
		
	%>
</body>
</html>