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

	<%
		request.setCharacterEncoding("EUC-KR");
	
	
		// �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
	
		// DB�� �����ϴ� url, ���̵�, ��й�ȣ
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
	
		// ������� ��������
		Connection conn = DriverManager.getConnection(db_url,db_id,db_pw);
	
		// SQL�� ����
		String sql = "SELECT ID,NICK,EMAIL,PHONE,GENDER,AGE FROM MEMBER";  // nick > * (��� ������)
		PreparedStatement psmt = conn.prepareStatement(sql);
		
	
		// ������ ���� Ȯ��
		ResultSet rs = psmt.executeQuery();
		
		out.print("<table border='1'>");
		out.print("<tr><th>ID</th><th>NICK</th><th>EMAIL</th><th>PHONE</th><th>GENDER</th><th>AGE</th></tr>");
		// ��ȸ �� �ݺ������� ������ ȸ�� ���� Ȯ��
		while(rs.next()){
			String id = rs.getString(1);
			// String pw = rs.getString(2);
			String nick = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String gender = rs.getString(5);
			int age = rs.getInt(6);		
			
			//System.out.println(id+"/"+nick+"/"+email+"/"+phone+"/"+gender+"/"+age);
			
			if(!id.equals("admin")){
				// id�� admin�� �ƴ�(!) ȸ���� ���
				out.print("<tr>");
				out.print("<td>"+id+"</td>");
				out.print("<td>"+nick+"</td>");
				out.print("<td>"+email+"</td>");
				out.print("<td>"+phone+"</td>");
				out.print("<td>"+gender+"</td>");
				out.print("<td>"+age+"</td>");
				out.print("</tr>");
			}

		}//end while
			
		out.print("</table>");
	
	
	
	%>
</body>
</html>