<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="ex10_makeTableResult.jsp" method="get"> <!-- 1.action : �����͸� ���� �������� ���� �ּҰ� 
	                                                      (+) method:������ ���۹��-->
		<h2>�� ���� ���� ����� �ǰ���?</h2>
		�� <input type="number" name="f"> <!-- 2. name: � �����͸� �������� �˷��� -->
		<hr>
		<h2>�� ���� ���� ����� �ǰ���?</h2>
		�� <input type="number" name="r">
		<br>
		<input type="submit">  <!-- 3. -->
		
	
	</form>
</body>
</html>