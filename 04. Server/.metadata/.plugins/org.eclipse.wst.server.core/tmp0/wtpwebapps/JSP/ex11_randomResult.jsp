<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
	div, h2, fieldset, input {
		margin:auto;
		text-align:center;
		margin-top:15px;
	}
</style>

</head>
<body>

	
	<h2>���� ��÷ ����</h2>
	<fieldset>
		<legend>���� ��÷ ���</legend>
		<%-- ���� ���, ������ �� �ϳ��� �������� �����ؼ� ��� --%>
		<%
			// post ��� ���ڵ�
			request.setCharacterEncoding("EUC-KR");
		
			String title = request.getParameter("title");
			// item ���� ����, ������ �̸��̹Ƿ� >> �迭 : request.getParameterValues()
			String[] item = request.getParameterValues("item");			
			Random rd = new Random();
			
		%>
			
		<%= title %> <br>
		<%-- ���� ������ �迭�� ���̸�ŭ : �迭��.length --%>
		<%= item[rd.nextInt(item.length)] %> 
			
	</fieldset>
	
</body>
</html>