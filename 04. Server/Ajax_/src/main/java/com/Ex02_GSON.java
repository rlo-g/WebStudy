package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;


@WebServlet("/Gson")
public class Ex02_GSON extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// JSON 객체 생성
		JsonObject jsonObj = new JsonObject();
		
		// JSON 객체에 속성, 값 추가하기
		jsonObj.addProperty("data","Hello");
		jsonObj.addProperty("data2", "JSON 객체 생성 성공!");
		
		// 만들어진 JSON 겍체 출력하기
		System.out.println(jsonObj);
		
		// 응답할 형식 지정 + 한글 데이터가 깨지지 않도록 설정(해서 전달..?)
		response.setContentType("application/json; charset=UTF-8");  
		                           // ("전달할 형식(MIME Type);charset=")
		PrintWriter out = response.getWriter();
		out.print(jsonObj);
	}

}
