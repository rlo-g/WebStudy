<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- �ݺ����� ����� 10��¥�� ���� �ִ� ���̺� ����� --%>
	
	<table border="1px solid black">
		<tr>
			<%for(int i = 1; i < 11; i++){ 		
				out.print("<td>" + i + "</td>");  //��ũ��Ʈ���� ������ �ʰ� html ���� ����ϴ� ��� : out ��ü
			}%>
		
		</tr>
	</table>

</body>
</html>