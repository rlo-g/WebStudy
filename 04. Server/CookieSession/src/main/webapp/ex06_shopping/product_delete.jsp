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
	<!-- ��� ��ǰ ������ ������ �Ŀ� product_cart.jsp�� �̵� -->
	
	<%
		Cookie[] cookies = request.getCookies();
	
		if(cookies!=null){
			for(int i = 0; i < cookies.length; i++){
				// i��° ��Ű ���� �� �ݿ�
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
		
		response.sendRedirect("product_cart.jsp");
	
	%>
</body>
</html>