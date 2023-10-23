<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style>
	     /* CSS 주석 */
	</style>
	<script>
	     // JS 주석
	</script>
</head>
<body>
	<!-- HTML 주석 -->
	<%-- JSP 주석 --%>
	
	<h1>오늘은 금요일</h1>
	
	<%-- Java 언어 사용 : <% %> --%>
	<%
	    // 스크립트릿 : JSP 안에서 Java 코드를 사용하기 위해 사용하는 것
		int num = 10;
		String name = "햄미";
		int size = 20;
		String color = "yellow";
	%>
	
	<%-- Java에서 쓴 변수를 밖에서 사용하는 방법 : 표현식 --%>
	<%= name %>
	
	<hr size="<%= size %>" color="<%= color %>">
	
	
</body>
</html>