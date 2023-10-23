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
		// Post 방식의 인코딩 필요
		request.setCharacterEncoding("EUC-KR");
		String url = request.getParameter("url");
	
		
		if(url.equals("네이버")) {
			response.sendRedirect("https://www.naver.com");	 // 응답객체(response)를 통해 돌려줌
		}else if(url.equals("구글")){
			response.sendRedirect("https://www.google.com");
		}else if(url.equals("다음")){
			response.sendRedirect("https://www.daum.net");
		}else if(url.equals("광주인공지능사관학교")){
			response.sendRedirect("https://gj-aischool.or.kr/");
		}
	
	%>
</body>
</html>