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
    	// Page Scope
		// - �ϳ��� jsp ������ ���� �����ϴ� ����
		// - ���� ���������� ���������� �����Ͽ� Ȱ���ϰų�, ������ ���� EL ǥ������� Ȱ���� �� ���
		pageContext.setAttribute("nickName", "�ܹ�");	
	%>
	<!-- ������ ������ �ҷ����� -->
	<%=pageContext.getAttribute("nickName") %>
</body>
</html>