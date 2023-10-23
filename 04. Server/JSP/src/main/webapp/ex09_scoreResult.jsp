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
		// post 방식의 인코딩을 해줘야함 > request : 요청한 데이터가 다 들어가 있으므로 response xxxx
		request.setCharacterEncoding("EUC-KR");
		
		String name = request.getParameter("name");
		
		int java = Integer.parseInt(request.getParameter("java"));
		// 문자형을 정수형으로 바꿔서 변수 선언
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int android = Integer.parseInt(request.getParameter("android"));

		// 소숫점까지 나오게 double
		double avg = (java+web+iot+android)/4.0;
		
		String score = "";
		
		if(avg >= 95) {
			score = "A+";
		}else if(avg >= 85){
			score = "A";
		}else if(avg >= 80){
			score = "B+";
		}else if(avg >= 70){
			score = "C";
		}else{
			score = "F";
		}
	%>
	
	<fieldset id="field">
		<legend>학점 관리 프로그램</legend>
			<table style="margin:auto; text-align:center;">
				<tr>
					<td>이름</td>
					<td><%=name %></td>
				</tr>
				<tr>
					<td>JAVA 점수</td>
					<td><%=java %></td>
				</tr>
				<tr>
					<td>WEB 점수</td>
					<td><%=web %></td>
				</tr>
				<tr>
					<td>IOT 점수</td>
					<td><%=iot %></td>
				</tr>
				<tr>
					<td>ANDROID 점수</td>
					<td><%=android %></td>
				</tr>
				<tr>
					<td>평균</td>
					<td><%=avg %></td>
				</tr>
				<tr>
					<td>학점</td>
					<td><strong><%=score %></strong></td>
				</tr>
			</table>
	</fieldset>

	
	
</body>
</html>