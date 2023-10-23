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
		// loginService.jsp에서 받아온 "nick"을 넣어서 객체 생성
		String nick = request.getParameter("nick");
	%>
	<h2><%= nick %>님 환영합니다!!</h2>
</body>
</html>