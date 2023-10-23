<%@page import="java.lang.reflect.Array"%>
<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%-- 0. lib에 jstl 파일 추가하기 --%>   
<%-- 1. JSTL을 사용하기 위한 taglib 추가 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%  ArrayList<String> idol = new ArrayList<String>();
		idol.add("허윤진");
		idol.add("지효");
		idol.add("류진");
		idol.add("제노");
		idol.add("영훈");
		
		pageContext.setAttribute("idol", idol);		%>
	<!-- items="배열" 
			- items의 배열이 var에 순서대로 들어감 -->
	<c:forEach items="${idol}" var="name"> ${name}</c:forEach>
	
	
	<br>
	<%
		MemberDTO dto1 = new MemberDTO("huh","1234","huh","서울");
		MemberDTO dto2 = new MemberDTO("hyo","1234","hyo","서울");
		MemberDTO dto3 = new MemberDTO("neww","1234","new","서울");
		MemberDTO dto4 = new MemberDTO("jeno","1234","jeno","서울");
		MemberDTO dto5 = new MemberDTO("hun","1234","hun","서울");
		
		// 위 다섯 개를 하나로 묶어서 사용하기 위해 ArrayList에 넣는다
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
		
		// jstl과 el을 쓰려면 항상 저장해야 사용할 수 있다 (scope에 저장)
		pageContext.setAttribute("list", list);		
	%>
	
	<table border="1px">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>주소</td>
		</tr>
		<!-- 아래에 list 안에 있는 회원의 정보를 JSTL을 통해 출력하기 -->
		<c:forEach varStatus="i" items="${list}" var="name" >
			<tr>
			 <!--   set 한 것은 scope 영역에 저장됨
				    반복문의 상태를 기억하고 있는 변수, 반복문의 순서나 정보를 기억하고 있음
					다른 영역에 저장하고 싶다면 scope="" -->
				<td>${i.count }</td>  <!-- 몇번째 반복인지 개수를 셈, index는 0부터 나옴 -->
				<td>${name.id}</td>
				<td>${name.pw}</td>
				<td>${name.nick}</td>
				<td>${name.addr}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>