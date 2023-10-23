<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	h1, table {
		text-align: center;
		margin: auto;
	}
</style>
</head>
<body>

	<%  // 요청객체를 통해 데이터 받아오기 (문자형 > 정수형 변환)
		int floor = Integer.parseInt(request.getParameter("f"));
		int room = Integer.parseInt(request.getParameter("r"));   %>
		
	<h1><%= floor %>층</h1>
	<h1><%= room %>방</h1>
	<table border="1px double black">
	
		<%-- 층 > 방 --%>
			<%  for(int i = 0; i < floor; i++){ 
					out.print("<tr>");
				    for(int j = 0; j < room; j++ ){
						out.print("<td>"+(j+1)+"</td>");
					} 
					out.print("</tr>");	
				} %>	
	</table>
</body>
</html>