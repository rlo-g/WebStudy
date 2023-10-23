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
		EL�� ����
		 - EL�� java�� ����� �ƹ� ������ ���� ������ �� �� �ִ� ���� �ƴ϶�
		  Scope�� ����� ���� ������ ����� �� �ִ�
		   * Scope ���� : page, request, session, application
	 --%>
	<!--  session�� ����� id��� �̸��� ���� ���������� ǥ���ϱ� -->
	${id}�� ȯ���մϴ�! <br>
	
	
	<%-- EL�� �پ��� ������ (p.311) --%>
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
	
	
	
	<%-- EL���� DTO, VO�� ��� �����ñ�? --%>
	
	<% 
		MemberDTO dto = new MemberDTO("meom","1234","��","����");
		pageContext.setAttribute("dto", dto);	
	%>
	
	<!-- page ������ ����� dto�� ���̵� ���� ǥ������ �̿��� ���������� ǥ���ϱ� -->
	<% MemberDTO info = (MemberDTO)pageContext.getAttribute("dto"); %>
	<%= info.getId() %>
	<%= dto.getId() %>
	
	<!-- EL�� ����� dto �ȿ� �ִ� private �ʵ� ���� �������� ���ؼ���
		�ݵ��, getter �޼ҵ尡 �ʿ��ϴ�!
		(getter �޼ҵ带 ȣ���ؼ� �������� ������) -->
	${dto.id}
	${dto.pw}
	${dto.nick}
	${dto.addr }
	
	<!-- ����, EL�� ���� ���� �������� ��� �ɱ�? 
			- empty�� ���� �Ǵ� > true(���� ����) -->
	${empty good } 
	${not empty good }
	
	
	<!--  
		����, ������ �̸��� ���� ���� ������ ���ִٸ� EL������ ��� ���� �����ñ�? 
		  > EL���� ���� �������ڴ� : ${name}�ϰ� �Ǵ� ����
		    - EL�� pageContext�������� name�� ���� �ִ��� ã�Եȴ� 
		  > ã�� ���� : page -> request -> session -> application
		  > EL���� Ư������������ ã������ ��, name �տ� Ư�� ���� Scope�� �ٿ��ش�
		  p.308		  
	-->
	<% pageContext.setAttribute("name", "�ܹ�");
	   request.setAttribute("name", "�ع���"); 
	   session.setAttribute("name", "����");
	   application.setAttribute("name", "������"); %>
	   
	   ${sessionScope.name}
	
</body>
</html>