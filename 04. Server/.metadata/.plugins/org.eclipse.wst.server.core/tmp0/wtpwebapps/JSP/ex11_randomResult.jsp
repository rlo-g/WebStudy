<%@page import="java.util.Random"%>
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

	
	<h2>랜덤 당첨 게임</h2>
	<fieldset>
		<legend>랜덤 당첨 결과</legend>
		<%-- 주제 출력, 아이템 중 하나를 랜덤으로 선택해서 출력 --%>
		<%
			// post 방식 인코딩
			request.setCharacterEncoding("EUC-KR");
		
			String title = request.getParameter("title");
			// item 수는 가변, 동일한 이름이므로 >> 배열 : request.getParameterValues()
			String[] item = request.getParameterValues("item");			
			Random rd = new Random();
			
		%>
			
		<%= title %> <br>
		<%-- 랜덤 범위는 배열의 길이만큼 : 배열명.length --%>
		<%= item[rd.nextInt(item.length)] %> 
			
	</fieldset>
	
</body>
</html>