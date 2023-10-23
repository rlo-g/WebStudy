<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>누적 방문자 수</h1>
	<%
		Integer visit = (Integer)application.getAttribute("visit");
	
		if(visit==null){
			// 데이터 없을 경우
				application.setAttribute("visit", 0);
				visit = 0;
		}else{
			// 데이터가 존재할 경우
			// 증가된 값을 application에 다시 저장해줘야함
			visit += 1;
			application.setAttribute("visit", visit);
		}
	%>
	<h1><%=visit %>명</h1>
</body>
</html>