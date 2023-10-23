package com.front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ICommand {

	// 추상메소드
	// 이름만 있고 내용(기능)은 없음 (내용 구현 x)
	// 똑같은 이름의 실행문을 사용하기 위해, 같은 부모라는 공통점을 주기위해 강제성을 부여
	
	// 추상화 : 클래스간의 공통점을 찾아내서 공통의 부모를 설계하는 작업
	// 구체화 : 상속을 통해 클래스를 설계, 확장하는 작업
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	
	
}