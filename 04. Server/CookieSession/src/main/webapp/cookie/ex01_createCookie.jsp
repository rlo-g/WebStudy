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
		// ��Ű(Cookie)
		// - ������� ������ ������Ű�� ���� ���
		// - ����� PC�� ���� (key, value ������ ���� �� ���Ϸ� ����)
		// - value ���� Ÿ���� ���ڿ��� �����ϴ� (���ڴ� ���ڿ��� ���� �����ؾ���. �ѱ۵����� -> ���ڵ�)
		// *URLEncoder.encode()
		
		// ��Ű ���� ���
		Cookie cookie = new Cookie("name","meom");  // (key, value)
	
		// ��Ű�� �����Ⱓ �����ϴ� ��� 
		// - �� ������ ���� : .setMaxAge(second); >> second���� ����
		cookie.setMaxAge(30);     
		
		// ������ ��Ű�� ����ڿ��� ����
		response.addCookie(cookie);
		
		
		Cookie cookie2 = new Cookie("name2", "ham");
		Cookie cookie3 = new Cookie("name3", "user");
		
		response.addCookie(cookie2);
		response.addCookie(cookie3);
		
	%>
	<h1>��Ű ���� �Ϸ�!</h1>
</body>
</html>