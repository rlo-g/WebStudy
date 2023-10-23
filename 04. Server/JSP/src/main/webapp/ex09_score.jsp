<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="ex09_scoreResult.jsp" method="post"> <!-- post 방식 --> 
		<fieldset> <!-- 테두리 -->
			<legend>학점 확인 프로그램</legend> <!-- 테두리 제목 -->
			<table style="margin:auto; text-align:center;">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Java 점수</td>
					<td><input type="text" name="java"></td>
				</tr>
				<tr>
					<td>Web 점수</td>
					<td><input type="text" name="web"></td>
				</tr>
				<tr>
					<td>IoT 점수</td>
					<td><input type="text" name="iot"></td>
				</tr>
				<tr>
					<td>Android 점수</td>
					<td><input type="text" name="android"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="결과확인">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>