<%@page import="java.net.URLEncoder"%>
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
	<%-- ID, PW 정보를 받아와서 로그인. 성공 시 콘솔에 로그인한 회원의 닉네임 출력 --%>
	<%
		// request.setCharacterEncoding("EUC-KR"); >> id/pw는 거의 백프로 영어로 입력되므로 한글인코딩 안 해도 됨
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String nick = null;
		
		// 동적로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// DB가 존재하는 url, 아이디, 비밀번호
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		// 연결권한 가져오기
		Connection conn = DriverManager.getConnection(db_url,db_id,db_pw);
		
		// SQL문 실행
		String sql = "SELECT NICK FROM MEMBER WHERE id = ? AND pw = ?";  // nick > * (모든 데이터)
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		// 받아온 값 SQL문에 넣기
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		
		// 데이터 유무 확인
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			nick = rs.getString(1); // *인 경우 3 입력(오버로딩)
			
			System.out.println(nick);
		}     
		
		
		// 연결종료
		if(rs!=null){
			rs.close();
		}
		if(psmt!=null){
			psmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		
		
		// 로그인 성공 시 > loginSuccess.jsp
		// 로그인 실패 시 > login.jsp
		if(nick != null){
			// 로그인 성공
			nick = URLEncoder.encode(nick, "EUC-KR");
			response.sendRedirect("loginSuccess.jsp?nick="+nick); // 쿼리스트링 방법으로 이동할 페이지로 변수를 보내줌
		}else{
			// 로그인 실패
			response.sendRedirect("main.jsp");	
		}
		
	%>

</body>
</html>