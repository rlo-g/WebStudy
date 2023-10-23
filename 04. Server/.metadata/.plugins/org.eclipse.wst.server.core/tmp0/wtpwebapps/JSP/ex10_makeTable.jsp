<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="ex10_makeTableResult.jsp" method="get"> <!-- 1.action : 데이터를 어디로 보낼지에 대한 주소값 
	                                                      (+) method:데이터 전송방식-->
		<h2>몇 개의 층을 만드실 건가요?</h2>
		층 <input type="number" name="f"> <!-- 2. name: 어떤 데이터를 보내는지 알려줌 -->
		<hr>
		<h2>몇 개의 방을 만드실 건가요?</h2>
		방 <input type="number" name="r">
		<br>
		<input type="submit">  <!-- 3. -->
		
	
	</form>
</body>
</html>