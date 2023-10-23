package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex03_input
 */
@WebServlet("/Ex03_input")
public class Ex03_input extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Ex03_input.html에서 작성한 text값을 console에 출력
		
		// 웹에서 보내진 데이터 값 > request로 요청
		
		// 내가 입력한 값 반환해줌
		String txt = request.getParameter("txt");
		System.out.println(txt);
		
		
	}

}
