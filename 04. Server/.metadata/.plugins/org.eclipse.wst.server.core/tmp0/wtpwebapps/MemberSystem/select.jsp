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

	<%
		request.setCharacterEncoding("EUC-KR");
	
	
		// 동적로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
	
		// DB가 존재하는 url, 아이디, 비밀번호
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
	
		// 연결권한 가져오기
		Connection conn = DriverManager.getConnection(db_url,db_id,db_pw);
	
		// SQL문 실행
		String sql = "SELECT ID,NICK,EMAIL,PHONE,GENDER,AGE FROM MEMBER";  // nick > * (모든 데이터)
		PreparedStatement psmt = conn.prepareStatement(sql);
		
	
		// 데이터 유무 확인
		ResultSet rs = psmt.executeQuery();
		
		out.print("<table border='1'>");
		out.print("<tr><th>ID</th><th>NICK</th><th>EMAIL</th><th>PHONE</th><th>GENDER</th><th>AGE</th></tr>");
		// 조회 시 반복문으로 각각의 회원 정보 확인
		while(rs.next()){
			String id = rs.getString(1);
			// String pw = rs.getString(2);
			String nick = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String gender = rs.getString(5);
			int age = rs.getInt(6);		
			
			//System.out.println(id+"/"+nick+"/"+email+"/"+phone+"/"+gender+"/"+age);
			
			if(!id.equals("admin")){
				// id가 admin이 아닌(!) 회원만 출력
				out.print("<tr>");
				out.print("<td>"+id+"</td>");
				out.print("<td>"+nick+"</td>");
				out.print("<td>"+email+"</td>");
				out.print("<td>"+phone+"</td>");
				out.print("<td>"+gender+"</td>");
				out.print("<td>"+age+"</td>");
				out.print("</tr>");
			}

		}//end while
			
		out.print("</table>");
	
	
	
	%>
</body>
</html>