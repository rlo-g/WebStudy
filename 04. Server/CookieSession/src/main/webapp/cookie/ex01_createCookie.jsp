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
		// 쿠키(Cookie)
		// - 사용자의 정보를 유지시키기 위한 기술
		// - 사용자 PC에 저장 (key, value 구조로 만든 후 파일로 저장)
		// - value 값의 타입은 문자열만 가능하다 (숫자는 문자열로 만들어서 저장해야함. 한글데이터 -> 인코딩)
		// *URLEncoder.encode()
		
		// 쿠키 생성 방법
		Cookie cookie = new Cookie("name","meom");  // (key, value)
	
		// 쿠키의 유지기간 설정하는 방법 
		// - 초 단위로 설정 : .setMaxAge(second); >> second동안 유지
		cookie.setMaxAge(30);     
		
		// 생성된 쿠키를 사용자에게 응답
		response.addCookie(cookie);
		
		
		Cookie cookie2 = new Cookie("name2", "ham");
		Cookie cookie3 = new Cookie("name3", "user");
		
		response.addCookie(cookie2);
		response.addCookie(cookie3);
		
	%>
	<h1>쿠키 생성 완료!</h1>
</body>
</html>