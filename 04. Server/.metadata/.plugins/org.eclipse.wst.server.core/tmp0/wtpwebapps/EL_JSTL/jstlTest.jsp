<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <!-- 1. JSTL을 사용하기 위한 taglib 추가 -->
 <!--  추가로 JSTL lib를 프로젝트에 추가 -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--  JSTL 사용하기  -->
	<!--  0. lib에 jstl 파일 추가하기 -->
	<!--  JSTL을 사용해 page 영역에 값 넣기 (p.347~) -->
	
	<!--  c:set 기본적으로 page 영역에 저장된다
			-> 특정 영역에 저장하고 싶다면 scope 속성 활용 -->
	<%-- <% pageContext.setAttribute("num",10);%> --%>
	<c:set var="num" value="100" />
	<c:set var="num" value="100" scope="session" />

	<c:out value="${num}"/>
	
	<!--  JSTL을 활용한 조건문 -->
	<!-- num의 값이 100보다 크면 '100보다 큽니다', 아니면 '작습니다' 출력 -->
	<c:if test="${num ge 100}">
		100보다 크거나 같습니다.
	</c:if>
	<c:if test="${num lt 100}">
		100보다 작습니다.
	</c:if>
	
	<br>
	
	<c:set var="time" value="점심"/>
	<!-- 
		time 값
		아침 -> 토스트
		점심 -> 비빔밥
		저녁 -> 족발
		그외 -> 라면
	 -->
	 <%-- 다중 if문 (choose) --%>
	 <c:choose>
	 	<c:when test="${time == '아침'}"> 토스트 </c:when>
	 	<c:when test="${time == '점심'}"> 비빔밥 </c:when>
	 	<c:when test="${time == '저녁'}"> 족발 </c:when>
	 	<c:otherwise> 라면 </c:otherwise> 
	 </c:choose> 
	
	<br>
	
	<!-- JSTL 반복분 -->
	<!--  for(int i = 1; i <= 10; i++){} -->
	<c:forEach var="i" begin="1" end="10" step="1">
		하하 ${i} <br>
	</c:forEach>
	
	<br>
	
	<table border="1px" style="background: yellow;">
		<c:forEach var="i" begin="2" end="5" step="1">
			<tr> <%-- tr: 행, td: 열 --%>
				<c:forEach var="j" begin="1" end="9" step="1">
					<td>${i}*${j}=${i*j}</td>
				</c:forEach>
			</tr>
		</c:forEach>
	
	
	</table>

</body>
</html>