<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- p.314 -->
	<form action="result.jsp" method="post">
		내가 좋아하는 음식
		<input type="text" name="food">
		<input type="submit">
		<br>
		좋아하는 생선 :
		참치 <input type="checkbox" name="fish" value="참치">
		전어 <input type="checkbox" name="fish" value="전어">
		광어 <input type="checkbox" name="fish" value="광어">
		우럭 <input type="checkbox" name="fish" value="우럭">
	</form>
</body>
</html>