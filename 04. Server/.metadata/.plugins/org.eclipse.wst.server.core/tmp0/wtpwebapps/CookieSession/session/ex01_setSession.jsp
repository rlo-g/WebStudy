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
		// ����(Session)
		// - ������� ������ ���������ִ� ���
		// - ���� pc�� ����
		// - �پ��� �ڷ��� �����͸� ���� --> Object ��ü�� ��ȯ�Ǿ� ����(��ĳ����)
		// - ���尴ü�� �������� �ʾƵ� ��!
		// - ������ ���� ��, ������ �뷮 ������ ����(���� �뷮�� ���� �޶��� �� �ִ�)
		// - �� �������� �������� ����
		//  * �����͸� ���ǿ� ���к��ϰ� �����ϸ� �� �ȴ�!
		//   : ����ڰ� ���񽺸� �̿��ϴ� �� �ʿ��� �������� �����ؾ� ��
		
		// ���� ������ �����͸� �����ϴ� ���
		// - session.setAttribute(name, value);
		// - name�� ���ڿ�
		// - value�� �⺻�ڷ���, ������ ��� ���� ����
		session.setAttribute("name", "meom");
		session.setAttribute("age", 20);
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("cookie");
		list.add("session");
		
		session.setAttribute("list", list);
	
	%>
	<h1>���� ������ ������ ���� �Ϸ�!</h1>
</body>
</html>