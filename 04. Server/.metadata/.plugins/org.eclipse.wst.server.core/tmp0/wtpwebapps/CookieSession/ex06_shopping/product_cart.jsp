<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��ٱ���</h1>
	
		<!-- 
			��Ű�� ����� ��ǰ���� ���
			- "product" -> "��ǰ" ��ȯ (replace() Ȱ��)
		-->
	
	<fieldset>
		<legend>��ǰ ����Ʈ</legend>
			<ul>
			<%
				Cookie[] cookies = request.getCookies();
				
				if(cookies!=null){
					for(int i = 0; i < cookies.length; i++){
						if(cookies[i].getName().contains("product")){
							// ���ڿ��� "product"�� ���Ե� ��Ű�鸸 ���
							out.print("<li>" + cookies[i].getValue().replace("product", "��ǰ") + "</li>");
							// replace(oldChar, newChar); 
							//   >> "oldChar"�� ���ԵǾ� �ִ� ���� ���ڿ��� ���ο� ���ڿ��� ��ü�Ͽ� �����ش�
						}	
					}
				}
			%>
			</ul>
	</fieldset>
	
	
	<p><a href="product_list.jsp">��� �����ϱ�</a></p>
	<p><a href="product_delete.jsp">��ǰ ��ü����</a></p>
</body>
</html>