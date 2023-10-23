<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		유저가 선택한 상품들을 쿠키에 저장되도록 기능 구현
		- 넘겨받은 value 값을 쿠키의 name으로 사용 (name이 중복되면 덮어씌워짐)
		- 하나의 상품 또는 여러개의 상품을 가져올 때 배열로 가져올것! (request.getParameterValues() 활용)
		* 저장 확인: 개발자 도구 > 애플리케이션 > 쿠키
	 -->
	 
	 <%
	 	// request.setCharacterEncoding("EUC-KR");
	 	String[] products = request.getParameterValues("product");
	 	
	 	if(products != null) {
	 		// 선택한 상품이 없을 때 '선택한 상품 담기'를 눌렀을 경우 오류가 나지 않는 방법!
		 	for(int i = 0; i < products.length; i++){
		 		// 쿠키 이름(name)을 하나로 통일하게 되면 마지막에 저장된 값만 쿠키로 생성된다
		 		// 여러 상품들이 저장되게 하려면 쿠키 이름이 중복되면 안 된다!
			 	Cookie cookie = new Cookie(products[i], products[i]);  // (key(name), value)
			 	response.addCookie(cookie);
		 	}
	 	}
	 	response.sendRedirect("product_list.jsp");

	 %>
</body>
</html>