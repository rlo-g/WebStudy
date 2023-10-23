<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <!-- 1. JSTL�� ����ϱ� ���� taglib �߰� -->
 <!--  �߰��� JSTL lib�� ������Ʈ�� �߰� -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--  JSTL ����ϱ�  -->
	<!--  0. lib�� jstl ���� �߰��ϱ� -->
	<!--  JSTL�� ����� page ������ �� �ֱ� (p.347~) -->
	
	<!--  c:set �⺻������ page ������ ����ȴ�
			-> Ư�� ������ �����ϰ� �ʹٸ� scope �Ӽ� Ȱ�� -->
	<%-- <% pageContext.setAttribute("num",10);%> --%>
	<c:set var="num" value="100" />
	<c:set var="num" value="100" scope="session" />

	<c:out value="${num}"/>
	
	<!--  JSTL�� Ȱ���� ���ǹ� -->
	<!-- num�� ���� 100���� ũ�� '100���� Ů�ϴ�', �ƴϸ� '�۽��ϴ�' ��� -->
	<c:if test="${num ge 100}">
		100���� ũ�ų� �����ϴ�.
	</c:if>
	<c:if test="${num lt 100}">
		100���� �۽��ϴ�.
	</c:if>
	
	<br>
	
	<c:set var="time" value="����"/>
	<!-- 
		time ��
		��ħ -> �佺Ʈ
		���� -> �����
		���� -> ����
		�׿� -> ���
	 -->
	 <%-- ���� if�� (choose) --%>
	 <c:choose>
	 	<c:when test="${time == '��ħ'}"> �佺Ʈ </c:when>
	 	<c:when test="${time == '����'}"> ����� </c:when>
	 	<c:when test="${time == '����'}"> ���� </c:when>
	 	<c:otherwise> ��� </c:otherwise> 
	 </c:choose> 
	
	<br>
	
	<!-- JSTL �ݺ��� -->
	<!--  for(int i = 1; i <= 10; i++){} -->
	<c:forEach var="i" begin="1" end="10" step="1">
		���� ${i} <br>
	</c:forEach>
	
	<br>
	
	<table border="1px" style="background: yellow;">
		<c:forEach var="i" begin="2" end="5" step="1">
			<tr> <%-- tr: ��, td: �� --%>
				<c:forEach var="j" begin="1" end="9" step="1">
					<td>${i}*${j}=${i*j}</td>
				</c:forEach>
			</tr>
		</c:forEach>
	
	
	</table>

</body>
</html>