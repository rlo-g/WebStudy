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
		// 데이터 꺼낼 때 요청한 데이터는 request 안에 있었음...
		// jsp에서도 데이터를 받을 수 있다
		String text = request.getParameter("txt");	
	%>
	<%= text %>
</body>
</html>