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

	<div>
		<h2>���� ��÷ ����</h2>
		<fieldset>
			<legend>���� ���� �Է�</legend>
			<form action="ex11_createInput.jsp" method="post">
				<input type="number" name="num">
				<br>
				<input type="submit" value="�����ϱ�">
			</form>
		</fieldset>
	</div>

</body>
</html>