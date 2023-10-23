<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h1>모든 쿠키 삭제</h1>
	<%
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null) {
			for(int i = 0; i < cookies.length; i++){
				// 배열 순서대로 쿠키 삭제, 반영
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
	
	
	
	%>
</body>
</html>