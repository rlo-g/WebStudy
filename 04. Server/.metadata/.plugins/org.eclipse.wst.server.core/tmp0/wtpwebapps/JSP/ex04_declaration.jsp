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
		����
		: JSP �ȿ��� �ʵ� �Ǵ� �޼��带 ����� ���� �� ��� --%>
		
	<%!
		// ����
		// field�� ����
		public String name = "�ܹ�";
	
		// �޼��� ���� ����
		public int plus(int num1, int num2){
			return num1+num2;
		}
	%>
	
	<%
		// ��ũ��Ʈ�� 
		// servlet���� service �޼��� �ȿ� ����
		// ���������� ���� >  ���������� public�� �� �� ����
		String name2 = "�ع���";   
		
		// �޼��� ���� �Ұ���
	%>
	
	<%= plus(30,30) %>
	
</body>
</html>