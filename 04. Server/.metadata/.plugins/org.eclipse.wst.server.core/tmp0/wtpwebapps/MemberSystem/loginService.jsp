<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- ID, PW ������ �޾ƿͼ� �α���. ���� �� �ֿܼ� �α����� ȸ���� �г��� ��� --%>
	<%
		// request.setCharacterEncoding("EUC-KR"); >> id/pw�� ���� ������ ����� �ԷµǹǷ� �ѱ����ڵ� �� �ص� ��
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String nick = null;
		
		// �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// DB�� �����ϴ� url, ���̵�, ��й�ȣ
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		// ������� ��������
		Connection conn = DriverManager.getConnection(db_url,db_id,db_pw);
		
		// SQL�� ����
		String sql = "SELECT NICK FROM MEMBER WHERE id = ? AND pw = ?";  // nick > * (��� ������)
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		// �޾ƿ� �� SQL���� �ֱ�
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		
		// ������ ���� Ȯ��
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			nick = rs.getString(1); // *�� ��� 3 �Է�(�����ε�)
			
			System.out.println(nick);
		}     
		
		
		// ��������
		if(rs!=null){
			rs.close();
		}
		if(psmt!=null){
			psmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		
		
		// �α��� ���� �� > loginSuccess.jsp
		// �α��� ���� �� > login.jsp
		if(nick != null){
			// �α��� ����
			nick = URLEncoder.encode(nick, "EUC-KR");
			response.sendRedirect("loginSuccess.jsp?nick="+nick); // ������Ʈ�� ������� �̵��� �������� ������ ������
		}else{
			// �α��� ����
			response.sendRedirect("main.jsp");	
		}
		
	%>

</body>
</html>