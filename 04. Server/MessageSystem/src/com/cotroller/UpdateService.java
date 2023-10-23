package com.cotroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class UpdateService implements ICommand{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		System.out.println("회원정보 수정 기능 실행");
		
		// 세션에 저장된 회원정보(info)에서 이메일 정보를 꺼내오기 위해서 객체 생성
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");

		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		
		// 입력받은 수정 정보를 묶어서 저장할 객체 생성
		// 세션(info)에 저장된 이메일도 함께 저장
		MemberDTO changeInfo = new MemberDTO(info.getEmail(), pw, phone, addr);
		
		// 데이터베이스와 연결해줄 객체 생성
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(changeInfo);

		if(cnt > 0) {
			// 회원정보수정 성공 시 
			// 수정된 정보(changeInfo)를 세션 영역(info)에 저장 후 main.jsp로 이동
			session.setAttribute("info", changeInfo);
			return "main.jsp";
		}else {
			return "update.jsp";
		}
	}
}
