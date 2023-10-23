<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 테이블 생성 1 -->
	<table border="1px solid black">
		<tr>
		  <%-- 스크립트릿을 통해 Java 로직 쪼개기 가능!!--%>
			<% for(int i = 1; i < 11; i++){	%>
			<td> <%-- HTML 문장 --%>
			<%= i %> <%-- 표현식을 통해 Java에서 반복문 돌린 값을 출력함 (반복문 안에서)--%>
			</td>
			<% }%> <%-- Java for문 끝내기 --%>
		</tr>
	</table>
	
	
	<!-- 테이블 생성 2 -->
	<table>
		<tr>
		 	<% 
		 		String td = "";
		 		for(int i = 1; i <= 10; i++){
		 			td += "<td>" + i + "</td>";
		 		}
		 	%>
		 	<%= td %> <%-- td에 담겼던 <td></td>문이 Java 밖으로 나와서 html문에서 사용됨 --%>
		</tr>
	</table>
	<%-- jsp 흐름 : .jsp 만들어서 실행 > _jsp.java(servlet)로 바뀜 > 실행 시 _jsp.class로 변경 > 실행 시 html 페이지 --%>
</body>
</html>