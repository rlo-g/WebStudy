<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- ���̺� ���� 1 -->
	<table border="1px solid black">
		<tr>
		  <%-- ��ũ��Ʈ���� ���� Java ���� �ɰ��� ����!!--%>
			<% for(int i = 1; i < 11; i++){	%>
			<td> <%-- HTML ���� --%>
			<%= i %> <%-- ǥ������ ���� Java���� �ݺ��� ���� ���� ����� (�ݺ��� �ȿ���)--%>
			</td>
			<% }%> <%-- Java for�� ������ --%>
		</tr>
	</table>
	
	
	<!-- ���̺� ���� 2 -->
	<table>
		<tr>
		 	<% 
		 		String td = "";
		 		for(int i = 1; i <= 10; i++){
		 			td += "<td>" + i + "</td>";
		 		}
		 	%>
		 	<%= td %> <%-- td�� ���� <td></td>���� Java ������ ���ͼ� html������ ���� --%>
		</tr>
	</table>
	<%-- jsp �帧 : .jsp ���� ���� > _jsp.java(servlet)�� �ٲ� > ���� �� _jsp.class�� ���� > ���� �� html ������ --%>
</body>
</html>