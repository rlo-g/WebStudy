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
		// ������ ���� �� ��û�� �����ʹ� request �ȿ� �־���...
		// jsp������ �����͸� ���� �� �ִ�
		String text = request.getParameter("txt");	
	%>
	<%= text %>
</body>
</html>