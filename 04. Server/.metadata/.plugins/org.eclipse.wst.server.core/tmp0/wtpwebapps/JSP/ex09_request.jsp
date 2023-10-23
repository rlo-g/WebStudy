<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ex09_result.jsp로 입력한 데이터 보내기 -->
	
	<form action="ex09_result.jsp">   <!-- 데이터 전송 : get방식  --> 
		<!-- 입력 태그는 항상 form 태그 안에 -->
		<input type="text" name="txt">
		<input type="submit">
	
	</form>
	
</body>
</html>