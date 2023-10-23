<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 반복문을 사용해 10개짜리 방이 있는 테이블 만들기 --%>
	
	<table border="1px solid black">
		<tr>
			<%for(int i = 1; i < 11; i++){ 		
				out.print("<td>" + i + "</td>");  //스크립트릿을 나누지 않고 html 문을 사용하는 방법 : out 객체
			}%>
		
		</tr>
	</table>

</body>
</html>