package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ajax")
public class Ex01_Ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String data = request.getParameter("data"); // 매개변수 ""를 값으로 갖는 정보(html에서 작성)를 받아온다
		String data2 = request.getParameter("data2");
		
		System.out.println("서버에 요청이 들어옴..!");
		System.out.println("넘겨받은 데이터 : " + data + "," + data2);
		
		// 요청한 곳으로 데이터 응답해주기
		// 서버에서 클라이언트에 데이터를 보내줄 때 통로역할을 해주는 객체 : PrintWriter (import)
		PrintWriter out = response.getWriter();
//		out.print("success!");
		
		// JSON 형식으로 데이터 응답해주기
		// JSON 형식: {"data":"Hello", "num":1234, "bool":true}
		// key는 반드시 문자열로 정의해야 한다.
		// 큰따옴표 안에 큰따옴표를 넣어야 할 경우 : 안쪽 큰따옴표 앞에 \ 사용
		out.print("{\"dat\":\"Hello\",\"num\":1234}");        
		}

}
