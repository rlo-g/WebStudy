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
		// Request Scope
		// - 하나 이상의 JSP 페이지에서 정보를 유지시키는 영역
		// - forward 방식으로 이동할 때 정보를 유지시킬 수 있다
		
		request.setAttribute("nickName", "멈뭄미");
	
		// 다른 페이지로 이동하는 방법: redirect
		// - 페이지 이동(단순이동, 데이터베이스에 변화를 주는 이동(로그인, 게시글 등록 등))
		// 페이지를 이동할 때 정보유지가 되지 않음 (쿼리스트링 예외)
		// - 요청이 두 번 발생 --> 정보전달(정보유지) X
		// - 내외부 페이지 접근 가능
		// response.sendRedirect("ex04_getRequestScope.jsp");
		
		// 다음 페이지로 정보를 전달할 때(정보유지) 사용하는 방법 : forward
		// - 페이지 이동(조회된 정보를 유지할 때)
		// - 요청 한 번 발생
		// - 내부 페이지만 접근 가능 (서버 내에서 이동하므로)
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex04_getRequestScope.jsp");
		dispatcher.forward(request, response);
		
		
	%>
	<h1>Request 영역</h1>
	<%=request.getAttribute("nickName") %>
</body>
</html>