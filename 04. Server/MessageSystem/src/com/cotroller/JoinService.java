package com.cotroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.ICommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class JoinService implements ICommand{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// f.c가 명령한 기능은 클래스에서 수행
		
		System.out.println("회원가입 기능 실행");
		
		// email, pw, phone, addr 값을 불러와서 console에 출력하기			
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		// System.out.println(email+pw+phone+addr);
		
		// 입력받은 값들을 하나의 데이터로 묶어주기 위한 객체 생성
		MemberDTO dto = new MemberDTO(email, pw, phone, addr);
		// System.out.println(dto.toString());
		
		// 데이터 베이스와 연결된 dao 객체 생성
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
		}else {
			System.out.println("회원가입 실패");
		}
		return "main.jsp";    // client가 이동할 주소 --> client에게 전달하는 것은 f.c의 역할이므로 f.c에게 전달
		
		
	}
}
