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
		������ ������ ��ǰ���� ��Ű�� ����ǵ��� ��� ����
		- �Ѱܹ��� value ���� ��Ű�� name���� ��� (name�� �ߺ��Ǹ� �������)
		- �ϳ��� ��ǰ �Ǵ� �������� ��ǰ�� ������ �� �迭�� �����ð�! (request.getParameterValues() Ȱ��)
		* ���� Ȯ��: ������ ���� > ���ø����̼� > ��Ű
	 -->
	 
	 <%
	 	// request.setCharacterEncoding("EUC-KR");
	 	String[] products = request.getParameterValues("product");
	 	
	 	if(products != null) {
	 		// ������ ��ǰ�� ���� �� '������ ��ǰ ���'�� ������ ��� ������ ���� �ʴ� ���!
		 	for(int i = 0; i < products.length; i++){
		 		// ��Ű �̸�(name)�� �ϳ��� �����ϰ� �Ǹ� �������� ����� ���� ��Ű�� �����ȴ�
		 		// ���� ��ǰ���� ����ǰ� �Ϸ��� ��Ű �̸��� �ߺ��Ǹ� �� �ȴ�!
			 	Cookie cookie = new Cookie(products[i], products[i]);  // (key(name), value)
			 	response.addCookie(cookie);
		 	}
	 	}
	 	response.sendRedirect("product_list.jsp");

	 %>
</body>
</html>