<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- include 지시자
		: 외부에 있는 페이지를 내 코드 안에 포함하는 것 --%>
	<%@ include file="ex07_menubar.jsp" %>
	
	<!--  
	<iframe src="ex07_menubar.jsp"></iframe> : 외부에서 가져와서 단순히 보여주는 것. 포함x
	-->
</body>
</html>