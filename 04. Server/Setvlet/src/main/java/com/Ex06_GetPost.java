package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex06_GetPost
 */
@WebServlet("/Ex06_GetPost")
public class Ex06_GetPost extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
//		String get = request.getParameter("get");
//		System.out.println(get);
//	}
	
	
	// service 메서드는 get, post 둘 다 받아들임..
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Get방식 메소드 호출");

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// input 데이터 제출 > 전송 시 console에 syso 생성
		System.out.println("Post방식 메소드 호출");
		
		// Post 방식 인코딩
		req.setCharacterEncoding("EUC-KR");  // request에게 문자 인코딩 요청
		String post = req.getParameter("post");
		System.out.println(post);
		
	}
	

}
