<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style>
	     /* CSS �ּ� */
	</style>
	<script>
	     // JS �ּ�
	</script>
</head>
<body>
	<!-- HTML �ּ� -->
	<%-- JSP �ּ� --%>
	
	<h1>������ �ݿ���</h1>
	
	<%-- Java ��� ��� : <% %> --%>
	<%
	    // ��ũ��Ʈ�� : JSP �ȿ��� Java �ڵ带 ����ϱ� ���� ����ϴ� ��
		int num = 10;
		String name = "�ܹ�";
		int size = 20;
		String color = "yellow";
	%>
	
	<%-- Java���� �� ������ �ۿ��� ����ϴ� ��� : ǥ���� --%>
	<%= name %>
	
	<hr size="<%= size %>" color="<%= color %>">
	
	
</body>
</html>