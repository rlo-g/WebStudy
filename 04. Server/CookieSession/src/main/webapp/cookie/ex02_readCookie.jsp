<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>��Ű ���� Ȯ��</h1>
	<%
		// (����� pc�� �����) ��Ű ������ �������� ��� (5,6��)
		// ����� pc�� �������� ��Ű ������ ����Ǿ� �ֱ� ������ �迭 ���·� �����´�
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null){
			
			for(int i = 0; i < cookies.length; i++){
				out.print("��Ű �̸�: " + cookies[i].getName()+"<br>");
				out.print("��Ű ��: " + cookies[i].getValue()+"<br>");
				out.print("���� �Ⱓ: " + cookies[i].getMaxAge()+"<br>");
				out.print("<hr>");
			}
		}
	%>
</body>
</html>