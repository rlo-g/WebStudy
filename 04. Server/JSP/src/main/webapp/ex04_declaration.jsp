<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		선언문
		: JSP 안에서 필드 또는 메서드를 만들고 싶을 때 사용 --%>
		
	<%!
		// 선언문
		// field로 간다
		public String name = "햄미";
	
		// 메서드 생성 가능
		public int plus(int num1, int num2){
			return num1+num2;
		}
	%>
	
	<%
		// 스크립트릿 
		// servlet에서 service 메서드 안에 들어간다
		// 지역변수로 간다 >  접근제한자 public을 달 수 없다
		String name2 = "멈뭄미";   
		
		// 메서드 생성 불가능
	%>
	
	<%= plus(30,30) %>
	
</body>
</html>