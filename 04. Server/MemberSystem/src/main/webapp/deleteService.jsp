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
	<%-- id, pw �� ��������
		id, pw ��ġ�ϴ� ȸ���� ���� ����
		���� ���� �� >> main.jsp
		���� ���� �� >> delete.jsp �̵� --%>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// ȸ��Ż�� ���� ���� ���θ� �� �� �ִ� ���� ����
		int cnt = 0;
		
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
		
		// DB �α��� ���� �޾ƿ���
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
			
		// ���� ���� ��û
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw); 

		String sql = "DELETE FROM MEMBER WHERE id = ? AND pw = ?";
				
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1,id);
		psmt.setString(2,pw);
				
		// psmt : ���� ���� ���� �� 1, ���� �� 0�� ��ȯ��
		cnt = psmt.executeUpdate();
		
		if(psmt!=null){
			psmt.close();
		}
		if(conn!=null){
			conn.close();
		}
		
		if(cnt > 0){
			// ȸ��Ż�� ����
			
			// alert(); â ���� (response.sendRedirect() �� ���� ���)
			out.print("<script>");
			out.print("alert('ȸ�� Ż�� ����!');");
			out.print("location.href='main.jsp'");  // js���� ������ �̵��ϴ� ���
			out.print("</script>");
			// response.sendRedirect("main.jsp");
		}else{
			// ����
			response.sendRedirect("delete.jsp");
		}
		
		
	%>
</body>
</html>