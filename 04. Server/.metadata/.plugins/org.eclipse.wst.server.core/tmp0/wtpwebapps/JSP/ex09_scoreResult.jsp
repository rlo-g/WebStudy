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
		// post ����� ���ڵ��� ������� > request : ��û�� �����Ͱ� �� �� �����Ƿ� response xxxx
		request.setCharacterEncoding("EUC-KR");
		
		String name = request.getParameter("name");
		
		int java = Integer.parseInt(request.getParameter("java"));
		// �������� ���������� �ٲ㼭 ���� ����
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int android = Integer.parseInt(request.getParameter("android"));

		// �Ҽ������� ������ double
		double avg = (java+web+iot+android)/4.0;
		
		String score = "";
		
		if(avg >= 95) {
			score = "A+";
		}else if(avg >= 85){
			score = "A";
		}else if(avg >= 80){
			score = "B+";
		}else if(avg >= 70){
			score = "C";
		}else{
			score = "F";
		}
	%>
	
	<fieldset id="field">
		<legend>���� ���� ���α׷�</legend>
			<table style="margin:auto; text-align:center;">
				<tr>
					<td>�̸�</td>
					<td><%=name %></td>
				</tr>
				<tr>
					<td>JAVA ����</td>
					<td><%=java %></td>
				</tr>
				<tr>
					<td>WEB ����</td>
					<td><%=web %></td>
				</tr>
				<tr>
					<td>IOT ����</td>
					<td><%=iot %></td>
				</tr>
				<tr>
					<td>ANDROID ����</td>
					<td><%=android %></td>
				</tr>
				<tr>
					<td>���</td>
					<td><%=avg %></td>
				</tr>
				<tr>
					<td>����</td>
					<td><strong><%=score %></strong></td>
				</tr>
			</table>
	</fieldset>

	
	
</body>
</html>