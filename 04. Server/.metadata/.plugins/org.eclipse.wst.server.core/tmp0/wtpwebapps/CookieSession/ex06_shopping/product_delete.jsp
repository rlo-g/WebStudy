<%@page import="java.net.CookieStore"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 모든 상품 정보를 삭제한 후에 product_cart.jsp로 이동 -->
	
	<%
		Cookie[] cookies = request.getCookies();
	
		if(cookies!=null){
			for(int i = 0; i < cookies.length; i++){
				// i번째 쿠키 삭제 및 반영
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
		
		response.sendRedirect("product_cart.jsp");
	
	%>
</body>
</html>