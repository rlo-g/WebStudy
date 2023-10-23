package com.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	// Controller
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 사용자가 입력한 id, pw 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = null;
		
		// id, pw를 이용해서 데이터베이스 조회하기
		// 회원데이터 존재 시 nick 데이처 가져오기
		
		// 데이터베이스 처리해주는 dao 객체 생성하기
		MemberDAO dao = new MemberDAO();
		
		// 데이터베이스에 저장된 nick 데이터를 가져오기 위해서, 로그인 메서드를 nick 변수에 저장한다(MemberDAO에서 반환된 데이터)
		nick = dao.login(id, pw);

		// 로그인 성공 시 > loginSuccess.jsp	
		// 로그인 실패 시 > login.jsp
		if(nick != null){
			// 로그인 성공
			nick = URLEncoder.encode(nick, "EUC-KR");
			response.sendRedirect("loginSuccess.jsp?nick="+nick); // 쿼리스트링 방법으로 이동할 페이지로 변수를 보내줌
		}else{
			// 로그인 실패
			response.sendRedirect("main.jsp");	
		}
		
		
	}

}
