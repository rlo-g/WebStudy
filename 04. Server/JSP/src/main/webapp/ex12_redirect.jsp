<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		리다이렉트 방식
		: Server가 요청을 한 Client에게 이동할 URL을 전달하면,
		Client는 받아온 URL을 통해 다시 접근하는 방식 
		method의 return과 똑같다 > 아래의 코드들은 실행이 안 되고 종료됨  
		--%>
		
	<%-- ex) 현재 페이지를 요청 시, 네이버 페이지로 이동 --%>
	
	<%
		// 응답을 통해, client에게 redirect 주소를 보내줌
		response.sendRedirect("https://www.naver.com");
	
	%>

</body>
</html>