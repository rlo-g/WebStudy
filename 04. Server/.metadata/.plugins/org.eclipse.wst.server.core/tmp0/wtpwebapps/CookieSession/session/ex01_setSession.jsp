<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		// 세션(Session)
		// - 사용자의 정보를 유지시켜주는 기술
		// - 서버 pc에 저장
		// - 다양한 자료형 데이터를 저장 --> Object 객체로 변환되어 저장(업캐스팅)
		// - 내장객체라서 정의하지 않아도 됨!
		// - 데이터 저장 시, 개수나 용량 제한이 없음(서버 용량에 따라 달라질 수 있다)
		// - 웹 브라우저에 의존하지 않음
		//  * 데이터를 세션에 무분별하게 저장하면 안 된다!
		//   : 사용자가 서비스를 이용하는 데 필요한 정보들을 저장해야 함
		
		// 세션 영역에 데이터를 저장하는 방법
		// - session.setAttribute(name, value);
		// - name은 문자열
		// - value는 기본자료형, 참조형 모두 저장 가능
		session.setAttribute("name", "meom");
		session.setAttribute("age", 20);
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("cookie");
		list.add("session");
		
		session.setAttribute("list", list);
	
	%>
	<h1>세션 영역에 데이터 저장 완료!</h1>
</body>
</html>