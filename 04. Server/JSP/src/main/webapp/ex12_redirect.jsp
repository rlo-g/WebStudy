<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		�����̷�Ʈ ���
		: Server�� ��û�� �� Client���� �̵��� URL�� �����ϸ�,
		Client�� �޾ƿ� URL�� ���� �ٽ� �����ϴ� ��� 
		method�� return�� �Ȱ��� > �Ʒ��� �ڵ���� ������ �� �ǰ� �����  
		--%>
		
	<%-- ex) ���� �������� ��û ��, ���̹� �������� �̵� --%>
	
	<%
		// ������ ����, client���� redirect �ּҸ� ������
		response.sendRedirect("https://www.naver.com");
	
	%>

</body>
</html>