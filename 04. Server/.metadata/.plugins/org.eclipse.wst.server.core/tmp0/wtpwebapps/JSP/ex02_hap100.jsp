<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 1���� 100������ ���� �ݺ����� ���� ���ϰ�, h1�±� �ȿ� ǥ���ϱ� --%>
	
	<%
		int sum = 0;
		for(int i = 1; i < 101; i++){
			sum += i;
		}

	%>
	
	<h1>1���� 100������ ���� -> <%= sum %></h1>
	
	
</body>
</html>