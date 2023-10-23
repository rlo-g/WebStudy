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
		// 세션 영역에 저장된 특정 데이터를 삭제하는 방법
		session.removeAttribute("name");

	%>
	
	<h1>세션 영역에 저장된 데이터 삭제 완료</h1>
	 <!-- 출력 시 null로 나타남 -->
</body>
</html>