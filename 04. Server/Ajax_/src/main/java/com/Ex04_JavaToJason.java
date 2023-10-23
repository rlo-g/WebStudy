package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.model.CoffeeDTO;


@WebServlet("/JavaToJason")
public class Ex04_JavaToJason extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Java 객체를 만들어 Jason 형태로.
		
		// 다섯잔의 커피 정보를 보관하는 ArrayList 생성
		ArrayList<CoffeeDTO> list = new ArrayList<>();
		list.add(new CoffeeDTO("아메리카노", 4500, "Tall"));
		list.add(new CoffeeDTO("카페라떼", 5000, "Tall"));
		list.add(new CoffeeDTO("쿨라임피지오", 5700, "Grande"));
		list.add(new CoffeeDTO("돌체라떼", 6400, "Venti"));
		list.add(new CoffeeDTO("자몽허니블랙티", 6700, "Venti"));
		
		// Java 객체 --> JSON 데이터로 변환
		Gson gson = new Gson();
		String jsonArr = gson.toJson(list);  // gson.toJson(변경하고 싶은 자바 객체/배열);, 넣은 자바의 타입에 따라 json 형태를 바꿔줌
		
//		System.out.println(jsonArr);
		

		// *****
		response.setContentType("application/json; charset=UTF-8");	
		PrintWriter out = response.getWriter();
		out.print(jsonArr);
	}

}
