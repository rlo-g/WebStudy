<%@page import="com.MemberDTO"%>
<%@page import="java.lang.reflect.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% session.setAttribute("id","meom");	%>
	<%-- 
		EL의 조건
		 - EL은 java에 저장된 아무 변수의 값을 꺼내서 쓸 수 있는 것이 아니라
		  Scope에 저장된 값만 꺼내서 사용할 수 있다
		   * Scope 영역 : page, request, session, application
	 --%>
	<!--  session에 저장된 id라는 이름의 값을 웹페이지에 표현하기 -->
	${id}님 환영합니다! <br>
	
	
	<%-- EL의 다양한 연산자 (p.311) --%>
	 <% 
	 	pageContext.setAttribute("num", 10);
	 	pageContext.setAttribute("isCheck", true);
	 %>
	${num} <br>
	${num+10 } <br>
	${num -1 } <br>
	${num*10 } <br>
	${num/2 } <==> ${num div 2 } <br>
	${num%3 } <==> ${num mod 3 } <br>
	${num > 5 && num > 3 } <br>
	${num > 5 and num > 3 } <br>
	${num > 5 || num > 3 } <br>
	${num > 5 or num > 3 } <br>
	
	${isCheck } <br>
	${!isCheck } <==> ${not isCheck } <br>	
	
	${num > 3 } <==> ${num gt 3} <br>
	${num < 20 } <==> ${num lt 20 } <br>
	${num >= 3} <==> ${num ge 3 } <br>
	${num <= 20 } <==> ${num le 20 } <br>
	
	${num ==10} <==> ${num eq 10} <br>
	${num != 20} <==> ${num ne 20 } <br>
	
	
	
	<%-- EL에서 DTO, VO를 어떻게 가져올까? --%>
	
	<% 
		MemberDTO dto = new MemberDTO("meom","1234","멈","광주");
		pageContext.setAttribute("dto", dto);	
	%>
	
	<!-- page 영역에 저장된 dto의 아이디 값을 표현식을 이용해 웹페이지에 표현하기 -->
	<% MemberDTO info = (MemberDTO)pageContext.getAttribute("dto"); %>
	<%= info.getId() %>
	<%= dto.getId() %>
	
	<!-- EL을 사용해 dto 안에 있는 private 필드 값을 가져오기 위해서는
		반드시, getter 메소드가 필요하다!
		(getter 메소드를 호출해서 가져오기 때문에) -->
	${dto.id}
	${dto.pw}
	${dto.nick}
	${dto.addr }
	
	<!-- 만약, EL로 없는 값을 가져오면 어떻게 될까? 
			- empty를 통해 판단 > true(값이 없다) -->
	${empty good } 
	${not empty good }
	
	
	<!--  
		만약, 동일한 이름의 값이 여러 영역에 들어가있다면 EL에서는 어떻게 값을 가져올까? 
		  > EL에서 값을 가져오겠다 : ${name}하게 되는 순간
		    - EL은 pageContext영역부터 name의 값이 있는지 찾게된다 
		  > 찾는 순서 : page -> request -> session -> application
		  > EL에서 특정역역에서만 찾고자할 때, name 앞에 특정 영역 Scope를 붙여준다
		  p.308		  
	-->
	<% pageContext.setAttribute("name", "햄미");
	   request.setAttribute("name", "멈뭄미"); 
	   session.setAttribute("name", "고맘미");
	   application.setAttribute("name", "송은지"); %>
	   
	   ${sessionScope.name}
	
</body>
</html>