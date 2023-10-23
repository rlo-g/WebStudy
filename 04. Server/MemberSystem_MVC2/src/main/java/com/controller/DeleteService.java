package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 회원탈퇴 할 회원의 id,pw를 받아옴
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 데이터를 묶어서 보냄 (캡슐화)
		MemberDTO dto = new MemberDTO(id, pw);
		
		// JDBC를 사용하는 기능은 전부 dao가 처리 > 객체 생성
		MemberDAO dao = new MemberDAO();
		
		// dao에게 삭제기능 요청 > 삭제 성공유무를 cnt로 받음 
		int cnt = dao.delete(dto);
		
		if(cnt > 0){
			// 회원탈퇴 성공
			response.sendRedirect("main.jsp");
		}else{
			// 실패
			response.sendRedirect("delete.jsp");
		}
	}

	
	
	
	
}
