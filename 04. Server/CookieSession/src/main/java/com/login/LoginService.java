package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 후 회원유무 반별하는 곳
		// Servlet에서 session을 사용할 경우, 세션 객체 생성(선언) 필수
		
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		if(id.equals("test")&&pw.equals("12345")) {
			// 회원 인증 성공
			// 세션에 아이디 저장 후 main으로 이동
			
			// 세션 객체 생성 방법
			session.setAttribute("id", id);
			
			// 서블릿에서 특정 폴더 내에 있는 html or jsp 파일에 접근할 경우
			// '폴더명/파일명.확장자'로 정의
			// main.jsp가 webapp 안 다른 폴더에 있으므로 "폴더명/main.jsp"를 통해 경로이동
			response.sendRedirect("ex05_login/main.jsp"); 
		}else {
			// 회원 인증 실패
			// 로그인 페이지로 이동
			response.sendRedirect("ex05_login/loginForm.html");
		}

	}

}
