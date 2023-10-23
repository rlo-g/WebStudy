package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04_imgSelect
 */
@WebServlet("/Ex04_imgSelect")
public class Ex04_imgSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Ex04_imgSelect.html에서 선택한 번호의 이미지 출력하기
		
		// Ex04_imgSelect.html에서 입력한 값 불러오기 (요청)
		String select = request.getParameter("select");
		
		// out 객체 가져오기 (응답)
		response.setCharacterEncoding("EUC-KR");
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		String path = "";
		
		if(select.equals("1")) {
			// 불러온 select가 1일 때
			path="img/images.png";

		}else if(select.equals("2")) {
			path="img/tin.png";

		}else if(select.equals("3")) {
			path="img/ham.jpg";
			
		}else {
			out.print("<p>숫자를 다시 입력해주세요!</p>");
		}
		out.print("<img src='"+path+"'>");
		
		out.print("</html>");
		out.print("</body>");
	}

}
