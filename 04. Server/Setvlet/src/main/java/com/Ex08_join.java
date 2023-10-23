package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08_join
 */
@WebServlet("/Ex08_join")
public class Ex08_join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// servlet 흐름 : .html에 데이터 입력 >> .java 파일 >(컴파일)> .class >(클래스파일 실행. JVM)> html 문서 > 클라이언트
		
		
		// Post 방식 인코딩 방법 (console)
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");
		String birth = request.getParameter("birthday");
		String color = request.getParameter("color");
		
		String[] hobby = request.getParameterValues("hobby");
		
		String talk = request.getParameter("talk");
		
		System.out.println("ID : " + id);
		System.out.println("NAME : " + name);
		System.out.println("EMAIL : " + email);
		System.out.println("TEL : " + tel);
		System.out.println("GENDER : " + gender);
		System.out.println("COUNTRY : " + country);
		System.out.println("BIRTH : " + birth);
		System.out.println("COLOR : " + color);
		
		System.out.print("HOBBY : ");
		for(int i = 0; i < hobby.length; i++) {
			System.out.print(hobby[i] + " ");
		}
		System.out.println();
		System.out.println("TALK : " + talk);
		
		
		PrintWriter out = response.getWriter();
		// 웹 브라우저에 한글 인코딩
		response.setCharacterEncoding("EUC-KR");
		
		out.print("<html>");
		out.print("<body>");
		
		out.print("ID : " + id);
		out.print("<br>");
		out.print("NAME : " + name);
		out.print("<br>");
		out.print("EMAIL : " + email);
		out.print("<br>");
		out.print("TEL : " + tel);
		out.print("<br>");
		out.print("GENDER : " + gender);
		out.print("<br>");
		out.print("COUNTRY : " + country);
		out.print("<br>");
		out.print("BIRTH : " + birth);
		out.print("<br>");
		out.print("COLOR : " + color);
		out.print("<br>");
		out.print("HOBBY : ");
		for(int i = 0; i < hobby.length; i++) {
			out.print(hobby[i] + " ");
		}
		out.print("<br>");
		out.print("TALK : " + talk);
			
		out.print("</html>");
		out.print("</body>");

		
		
		
	}

}
