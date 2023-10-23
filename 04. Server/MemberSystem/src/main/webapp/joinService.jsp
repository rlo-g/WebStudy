<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		// ����
		// ȸ������ �� main �������� ���ư��� ����� �ϼ��Ͻÿ�
		
	
		// �Ѿ�� �����͸� �������� JDBC�� ���� ���̺� �� �ֱ� (ȸ������)
		// �Ѿ���� ������ : id, pw, nick, email, phone, gender, age
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// <JDBC ����>
		// 0. ����̹� ���� ������Ʈ�� �ֱ� (java�� �ٸ��� ���� ����)
		
		// 1. ����̹� �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver"); // try-catch�� �ʿ� ����!!
		
		
		// 2. Ŀ�ؼ� ����
		// DB �α��� ���� �޾ƿ���
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
			
		// ���� ���� ��û
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw); 
				//try-catch�� ��� �� �ϹǷ� null �� ���� �ʾƵ� ��
		
		// 3. SQL�� ����

		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
			
	     // SQL���� �����ϰų� ?�� ä���� �� �ִ� ��ü
		PreparedStatement psmt = conn.prepareStatement(sql);
			
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, email);
		psmt.setString(5, phone);
		psmt.setString(6, gender);
		psmt.setInt(7, age);
		
		// ����
		psmt.executeUpdate();	
		
		
		// 4. ��������
		if(psmt!=null){
			psmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		
		
		// ȸ������ ���� ��, ���������� url�� ����
		response.sendRedirect("main.jsp");

	
		
	
	%>
</body>
</html>