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
		<h2>랜덤 당첨 게임</h2>
		<fieldset>
			<legend>랜덤 당첨 입력</legend>
			<form action="ex11_randomResult.jsp" method="post">
				주제: <input type="text" name="title">
				<br>
				
			<%-- 입력한 숫자만큼 input 태그 생성하기 --%>
				<%
					int num = Integer.parseInt(request.getParameter("num"));
				
					for(int i = 1; i <= num; i++){
						out.print("아이템"+ i + ": " + "<input type = 'text' name='item'> <br>");
					}	
				%>
				<input type="submit" value="시작">
			</form>
		</fieldset>
	</div>

</body>
</html>