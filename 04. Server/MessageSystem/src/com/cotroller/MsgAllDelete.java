package com.cotroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;
import com.model.MemberDTO;
import com.model.MessageDAO;

public class MsgAllDelete implements ICommand {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("메세지 전체 삭제 기능 실행 ");
		
		MessageDAO dao = new MessageDAO();
		
		// 로그인 한 사람의 이메일을 매개변수로 보내줘야함
		//  > 로그인 정보 : 세션에서 가져오기 (로그인 한 상태이므로)
		HttpSession session = request.getSession();
		
		// MemberDTO 객체를 통해서 세션에 로그인 정보가 저장된 info를 불러온다
		MemberDTO info = (MemberDTO)session.getAttribute("info");  
		
		// info에 있는 email 값을 가져와서 전체삭제 메서드 적용하기
		dao.allDelete(info.getEmail());
		
		return "main.jsp#two";
		
	}
}
