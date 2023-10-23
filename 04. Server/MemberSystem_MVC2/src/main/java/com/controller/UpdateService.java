package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		// id, pw 일치 시 정보 수정 (7개의 데이터 받아옴)
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		
		MemberDTO dto = new MemberDTO(id, pw, nick, email, phone, gender, age);
		
		// 데이터베이스와 연결되는 MemberDAO를 사용하기 위해서 객체 생성
		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(dto); // 위에서 받아온 7개의 데이터를 dto로 묶어서 dao.update()로 보내줌 > 결과를 cnt 통해 받음
		
		
		if(cnt>0){
			// 회원 정보 수정 성공
			response.sendRedirect("main.jsp");
		}else{
			// 회원 정보 수정 실패
			response.sendRedirect("update.jsp");
		}
		
		
	}

}
