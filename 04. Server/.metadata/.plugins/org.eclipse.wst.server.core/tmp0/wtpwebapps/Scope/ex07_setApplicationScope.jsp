<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Application ����</h1>
	<%
		// Application Scope
		// - ��� ����ڵ��� ���������� ����ϴ� ���� ������Ű�� ����
		// - ex) �湮�� ��
		// ��� ����ڵ��� ���������� ����ؾ��ϴ� ��(����Ǿ�� �ϴ� ��)�� application Ȱ��
		application.setAttribute("nickName", "����");
		response.sendRedirect("ex08_getApplicationScope.jsp");
	%>
</body>
</html>