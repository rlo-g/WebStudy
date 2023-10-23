package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex07_radioCheckBox
 */
@WebServlet("/Ex07_radioCheckBox")
public class Ex07_radioCheckBox extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("EUC-KR");
		String marriage = request.getParameter("marriage");
		
		System.out.println(marriage);
		
		// request.getParameter() : 동일 name 중 하나의 값만 받아옴 
//		String hobby = request.getParameter("hobby");
		
		
		// 동일한 name으로 여러개의 데이터를 받는 방법
		// String[] 배열, getParameterValues 
		String[] hobby = request.getParameterValues("hobby");
		
		
		// 체크한 취미 개수만큼 출력
		for(int i = 0; i < hobby.length; i++) {
			System.out.println(hobby[i]);
		}
	}


	
	

}
