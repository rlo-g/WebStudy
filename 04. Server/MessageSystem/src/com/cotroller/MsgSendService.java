package com.cotroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.ICommand;
import com.model.MessageDAO;
import com.model.MessageDTO;

public class MsgSendService implements ICommand {
							// 인터페이스 구현
	
	// 추상메서드(execute)를 반드시 구현해야한다
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// execute 강제성이 생겨서 똑같은 이름으로 만들 수 있음
		
		System.out.println("메세지 작성 기능 실행");

		String send_name = request.getParameter("send_name");
		String receive_email = request.getParameter("receive_email");
		String content = request.getParameter("content");

		MessageDTO dto = new MessageDTO(send_name, receive_email, content);
		// 정보를 제대로 받아왔는지 확인
		System.out.println(dto.toString());
		
		MessageDAO dao = new MessageDAO();
		
		int cnt = dao.send(dto);		
		
		return "main.jsp#two";
	
	
	}
}
