<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- page 지시자 사용 : 에러 발생 시 ex06_error.jsp로 이동하겠다! (url은 그대로, 화면만)--%>
<%@ page errorPage="ex06_error.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		지시자
		: web container가 JSP page를 Servlet class로 변환할 때 필요한 정보를 기술하기 위해 사용
		- page, include, taglib 지시자
	 --%>
	<%
		String name = "햄미";
		int age = 20;
		int error = 15 / 0;   //HTTP 상태 500 오류 : 내부 데이터 문제
		String phoneNumber = "010-9459-3986";
		String info = "040101-1111111";
	
	%>
</body>
</html>