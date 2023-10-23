<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 회원 목록 가져오기 (DAO) --%>
	<%
		// 데이터베이스와 연결되는 MemberDAO 객체 생성
		MemberDAO dao = new MemberDAO();
		
		// dao에게 요청한 회원목록을 받아옴
		// 한 사람의 정보는 하나의 MemberDTO에 묶여있음 (id, pw .. age) >> 가변배열 : ArrayList
		ArrayList<MemberDTO> list = dao.select();
	
		System.out.println("현재 회원 수 : " + list.size());   // ArrayList 크기 : .size()
	%>
	
	<%-- 가져온 회원 목록을 웹 사이트에 표현 --%>
	<table border = '1' style='text-align:center;'>
		<tr>
			<!-- 컬럼명 -->
			<th>번호</th>
			<th>아이디</th>
			<th>닉네임</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>성별</th>
			<th>나이</th>	
		</tr>
		
		<!-- 내가 가진 list 크기만큼 반복하면서 회원 정보 출력 -->
		<%
			for(int i = 0; i < list.size(); i++){
				out.print("<tr>");
				out.print("<td>" + (i+1) + "</td>");
				out.print("<td>" + list.get(i).getId() + "</td>");  // list에 담긴 i번째 사람의 정보 중 id를 가져온다
				out.print("<td>" + list.get(i).getNick() + "</td>");
				out.print("<td>" + list.get(i).getEmail() + "</td>");
				out.print("<td>" + list.get(i).getPhone() + "</td>");
				out.print("<td>" + list.get(i).getGender() + "</td>");
				out.print("<td>" + list.get(i).getAge() + "</td>");
				
				out.print("</tr>");
			}
		%>
	
	
	
	
	
	</table>
</body>
</html>