<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- page ������ ��� : ���� �߻� �� ex06_error.jsp�� �̵��ϰڴ�! (url�� �״��, ȭ�鸸)--%>
<%@ page errorPage="ex06_error.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		������
		: web container�� JSP page�� Servlet class�� ��ȯ�� �� �ʿ��� ������ ����ϱ� ���� ���
		- page, include, taglib ������
	 --%>
	<%
		String name = "�ܹ�";
		int age = 20;
		int error = 15 / 0;   //HTTP ���� 500 ���� : ���� ������ ����
		String phoneNumber = "010-9459-3986";
		String info = "040101-1111111";
	
	%>
</body>
</html>