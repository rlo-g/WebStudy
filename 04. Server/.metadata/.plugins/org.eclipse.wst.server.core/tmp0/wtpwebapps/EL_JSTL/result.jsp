<%@page import="org.eclipse.jdt.internal.compiler.ast.Annotation.AnnotationTargetAllowed"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 스크립트릿과 표현식을 사용해서 input에 입력한 값을 웹페이지에 표현하기 -->
	<%
		request.setCharacterEncoding("EUC-KR");
		String food = request.getParameter("food");
	%>
	<%=food %>
	
	${param.food}
	${param["food"]}
	
	<br>
	${paramValues.fish[0]}
	${paramValues.fish[1]}
	${paramValues.fish[2]}
	${paramValues.fish[3]}
	
</body>
</html>