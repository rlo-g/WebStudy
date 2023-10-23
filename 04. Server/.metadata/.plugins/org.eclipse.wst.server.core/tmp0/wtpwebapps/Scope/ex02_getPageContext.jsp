<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>Page Scope에 저장된 정보는 다른 페이지에서 접근이 불가능하다!<h3>
	<%=pageContext.getAttribute("nickName") %>
	<!-- 페이지 스코프를 설정한 페이지 내에서 불러와야 값에 접근할 수 있다. -->
</body>
</html>