<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>Page Scope�� ����� ������ �ٸ� ���������� ������ �Ұ����ϴ�!<h3>
	<%=pageContext.getAttribute("nickName") %>
	<!-- ������ �������� ������ ������ ������ �ҷ��;� ���� ������ �� �ִ�. -->
</body>
</html>