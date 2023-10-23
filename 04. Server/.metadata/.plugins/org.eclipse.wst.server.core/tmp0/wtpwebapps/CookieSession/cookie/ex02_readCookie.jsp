<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>쿠키 정보 확인</h1>
	<%
		// (사용자 pc에 저장된) 쿠키 정보를 가져오는 방법 (5,6번)
		// 사용자 pc에 여러개의 쿠키 정보가 저장되어 있기 때문에 배열 형태로 가져온다
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null){
			
			for(int i = 0; i < cookies.length; i++){
				out.print("쿠키 이름: " + cookies[i].getName()+"<br>");
				out.print("쿠키 값: " + cookies[i].getValue()+"<br>");
				out.print("유지 기간: " + cookies[i].getMaxAge()+"<br>");
				out.print("<hr>");
			}
		}
	%>
</body>
</html>