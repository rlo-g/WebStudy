package com.cotroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.ICommand;
import com.model.MessageDAO;

public class MsgDelete implements ICommand{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("메세지 개별 삭제 기능 실행");
		
		int num = Integer.parseInt(request.getParameter("num"));
	
		MessageDAO dao = new MessageDAO();
		dao.delete(num);
	
		return "main.jsp#two";
	}
}
