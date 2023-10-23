package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01_Mypage
 */
@WebServlet("/Ex01_Mypage")
public class Ex01_Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 콘솔 창에 출력
		System.out.println("안녕하세요??");
		
		// 페이지를 요청한 client의 ip 획득
		String ip = request.getRemoteAddr();
		
		// 응답객체(response)에 인코딩 적용
		response.setCharacterEncoding("EUC-KR");
		
		// 웹 페이지에 텍스트 및 태그를 사용하기 위해서는 out 객체 필요
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		
		out.print("<img src='images.png'>");
		if(ip.equals("192.168.0.11")) {
			// 문자열 비교 : .equals()
			out.print("<h1>" + "연지 언니 " + "안녕????</h1>");	
		}else if(ip.equals("192.168.0.59")) {
			out.print("<h1>" + "선생님 " + "안녕하세요??</h1>");
		}else {
			out.print("<h1>" + "손님 " + "안녕하세요????</h1>");	
		}
		
		out.print("</body>");
	
		out.print("</html>");
		
	}

}
