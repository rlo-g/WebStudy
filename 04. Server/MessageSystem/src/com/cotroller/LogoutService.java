package com.cotroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;

public class LogoutService implements ICommand {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("로그아웃 기능 실행");
		
		// 로그아웃 -> 세션 삭제
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "main.jsp";
	
	}
	
}
