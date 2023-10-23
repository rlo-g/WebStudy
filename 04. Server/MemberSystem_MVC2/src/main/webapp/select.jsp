<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- ȸ�� ��� �������� (DAO) --%>
	<%
		// �����ͺ��̽��� ����Ǵ� MemberDAO ��ü ����
		MemberDAO dao = new MemberDAO();
		
		// dao���� ��û�� ȸ������� �޾ƿ�
		// �� ����� ������ �ϳ��� MemberDTO�� �������� (id, pw .. age) >> �����迭 : ArrayList
		ArrayList<MemberDTO> list = dao.select();
	
		System.out.println("���� ȸ�� �� : " + list.size());   // ArrayList ũ�� : .size()
	%>
	
	<%-- ������ ȸ�� ����� �� ����Ʈ�� ǥ�� --%>
	<table border = '1' style='text-align:center;'>
		<tr>
			<!-- �÷��� -->
			<th>��ȣ</th>
			<th>���̵�</th>
			<th>�г���</th>
			<th>�̸���</th>
			<th>��ȭ��ȣ</th>
			<th>����</th>
			<th>����</th>	
		</tr>
		
		<!-- ���� ���� list ũ�⸸ŭ �ݺ��ϸ鼭 ȸ�� ���� ��� -->
		<%
			for(int i = 0; i < list.size(); i++){
				out.print("<tr>");
				out.print("<td>" + (i+1) + "</td>");
				out.print("<td>" + list.get(i).getId() + "</td>");  // list�� ��� i��° ����� ���� �� id�� �����´�
				out.print("<td>" + list.get(i).getNick() + "</td>");
				out.print("<td>" + list.get(i).getEmail() + "</td>");
				out.print("<td>" + list.get(i).getPhone() + "</td>");
				out.print("<td>" + list.get(i).getGender() + "</td>");
				out.print("<td>" + list.get(i).getAge() + "</td>");
				
				out.print("</tr>");
			}
		%>
	
	
	
	
	
	</table>
</body>
</html>