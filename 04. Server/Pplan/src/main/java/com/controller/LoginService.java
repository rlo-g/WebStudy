package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	
		MemberDAO dao = new MemberDAO();
		
		MemberDTO dto = new MemberDTO(id, pw);
		MemberDTO info = dao.login(dto);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("info", info);
		
		if(info != null) {
			System.out.println(info.toString());
		}else {
			System.out.println("로그인 실패");
		}
		
		response.sendRedirect("home/main.jsp");
	}

}
