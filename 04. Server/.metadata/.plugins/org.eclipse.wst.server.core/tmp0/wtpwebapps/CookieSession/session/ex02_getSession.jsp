<%@page import="java.util.ArrayList"%>
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
		// ���� �������� ������ �������� ���
		// - �ٸ� ������ ��� ��, ������ ���� -> Ư�� Ÿ�Կ� ������ ��� �ڷ����� ��ȯ����� �Ѵ�(�ٿ�ĳ����)
		// - ��¸� �� ���, out�� �ְų� ǥ���Ŀ� �ִ´�
		String name = (String)session.getAttribute("name");
		
		// - �⺻������ Ÿ��(char, boolean, int ...)�� �����͸� ���� ������ �������� ���,
		//  ����Ÿ������ ��ȯ����� ���� ������� null�� ���� ����ó���� �� �� �ִ�.
		// - ���ڿ� > ���� : Integer.parseInt();  --> Integer : ���� ������ ����Ÿ��
		// - �⺻������ Ÿ���� ����Ÿ������ ��ȯ�ϴ� ��� (Wraper Ŭ����)
		//  1. ������ : chat > Character
		//  2. ���� : byte > Byte, short > Short, int > Integer, long > Long
		//  3. �Ǽ� : float > Float, double > Double
		//  4. �� : boolean > Boolean
		Integer age = (Integer)session.getAttribute("age");
		
		ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");	
	%>
	
	<h1>���ǿ� ����� ������ Ȯ��</h1>
	<%=name %>
	<%=age %>
	<%= session.getAttribute("age1") %>
	
	<!-- null�� �ƴϸ� list.get(), null�̸� null�� ��� -->
	<%=list != null ? list.get(0) : null %> 
	<%=list != null ? list.get(1) : null %> 
</body>
</html>