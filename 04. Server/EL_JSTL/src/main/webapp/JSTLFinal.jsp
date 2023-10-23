<%@page import="java.lang.reflect.Array"%>
<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%-- 0. lib�� jstl ���� �߰��ϱ� --%>   
<%-- 1. JSTL�� ����ϱ� ���� taglib �߰� --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%  ArrayList<String> idol = new ArrayList<String>();
		idol.add("������");
		idol.add("��ȿ");
		idol.add("����");
		idol.add("����");
		idol.add("����");
		
		pageContext.setAttribute("idol", idol);		%>
	<!-- items="�迭" 
			- items�� �迭�� var�� ������� �� -->
	<c:forEach items="${idol}" var="name"> ${name}</c:forEach>
	
	
	<br>
	<%
		MemberDTO dto1 = new MemberDTO("huh","1234","huh","����");
		MemberDTO dto2 = new MemberDTO("hyo","1234","hyo","����");
		MemberDTO dto3 = new MemberDTO("neww","1234","new","����");
		MemberDTO dto4 = new MemberDTO("jeno","1234","jeno","����");
		MemberDTO dto5 = new MemberDTO("hun","1234","hun","����");
		
		// �� �ټ� ���� �ϳ��� ��� ����ϱ� ���� ArrayList�� �ִ´�
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
		
		// jstl�� el�� ������ �׻� �����ؾ� ����� �� �ִ� (scope�� ����)
		pageContext.setAttribute("list", list);		
	%>
	
	<table border="1px">
		<tr>
			<td>��ȣ</td>
			<td>���̵�</td>
			<td>��й�ȣ</td>
			<td>�г���</td>
			<td>�ּ�</td>
		</tr>
		<!-- �Ʒ��� list �ȿ� �ִ� ȸ���� ������ JSTL�� ���� ����ϱ� -->
		<c:forEach varStatus="i" items="${list}" var="name" >
			<tr>
			 <!--   set �� ���� scope ������ �����
				    �ݺ����� ���¸� ����ϰ� �ִ� ����, �ݺ����� ������ ������ ����ϰ� ����
					�ٸ� ������ �����ϰ� �ʹٸ� scope="" -->
				<td>${i.count }</td>  <!-- ���° �ݺ����� ������ ��, index�� 0���� ���� -->
				<td>${name.id}</td>
				<td>${name.pw}</td>
				<td>${name.nick}</td>
				<td>${name.addr}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>