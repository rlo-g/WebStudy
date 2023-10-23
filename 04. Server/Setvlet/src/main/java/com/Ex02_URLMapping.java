package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex02_URLMapping
 */

// Java 파일이 웹 페이지에서 실행되도록 url을 달아줌 : url명
// 웹 브라우저에서 servlet을 동작시키기 위해 실제 java 클래스 이름대신 servlet을 요청하기 위한 문자열을 맵핑
@WebServlet("/Ex02_test")
public class Ex02_URLMapping extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Hello");
	}

}
