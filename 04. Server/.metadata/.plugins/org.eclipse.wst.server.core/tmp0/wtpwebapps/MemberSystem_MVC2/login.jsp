<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	#wrap, h2, table{
		margin:auto;
		margin-top: 20px;
		text-align:center;
	}
</style>
</head>
<body>
	<div id="wrap">
		<h2>로그인 페이지</h2>
		<form action="LoginService" method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="로그인">
						<input type="reset">
					</td>
				</tr>								
				
				
				
						
			</table>
		</form>
	
	</div>

</body>
</html>