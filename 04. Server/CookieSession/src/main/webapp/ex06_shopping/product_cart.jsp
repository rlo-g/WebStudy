<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>장바구니</h1>
	
		<!-- 
			쿠키에 저장된 상품들을 출력
			- "product" -> "상품" 변환 (replace() 활용)
		-->
	
	<fieldset>
		<legend>상품 리스트</legend>
			<ul>
			<%
				Cookie[] cookies = request.getCookies();
				
				if(cookies!=null){
					for(int i = 0; i < cookies.length; i++){
						if(cookies[i].getName().contains("product")){
							// 문자열에 "product"가 포함된 쿠키들만 출력
							out.print("<li>" + cookies[i].getValue().replace("product", "상품") + "</li>");
							// replace(oldChar, newChar); 
							//   >> "oldChar"가 포함되어 있는 기존 문자열을 새로운 문자열로 대체하여 보여준다
						}	
					}
				}
			%>
			</ul>
	</fieldset>
	
	
	<p><a href="product_list.jsp">계속 쇼핑하기</a></p>
	<p><a href="product_delete.jsp">상품 전체삭제</a></p>
</body>
</html>