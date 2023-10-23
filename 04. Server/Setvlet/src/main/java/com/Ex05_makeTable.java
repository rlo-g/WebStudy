package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex05_makeTable
 */
@WebServlet("/Ex05_makeTable")
public class Ex05_makeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 입력한 숫자에 따라 방 생성하기
		
		// request 객체가 html에게 받은 데이터를 가져온다 
		// 문자형 > 숫자형으로 변경 : Integer.parseInt();
		int room = Integer.parseInt(request.getParameter("room"));
		
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		out.print("<table border='1px double black'>");
		// 한줄만 나와야하므로 <tr>은 반복문 밖에 위치(1개)
		out.print("<tr>");
		for(int i = 0; i < room; i++) {
			out.print("<td>"+ (i+1) + "</td>");

		}
		out.print("</tr>");
		out.print("</table>");
		
		out.print("</html>");
		out.print("</body>");
		
	}

}
