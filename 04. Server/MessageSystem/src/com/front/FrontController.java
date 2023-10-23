package com.front;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.valves.LoadBalancerDrainingValve;

import com.cotroller.JoinService;
import com.cotroller.LoginService;
import com.cotroller.LogoutService;
import com.cotroller.MSGSendService;
import com.cotroller.MsgAllDelete;
import com.cotroller.MsgDelete;
import com.cotroller.MsgSendService;
import com.cotroller.UpdateService;
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.MessageDAO;
import com.model.MessageDTO;
@WebServlet("*.do")    /* "*.do" : 모든 코드들이 .do로 끝나면 이 파일로 오게 함*/
public class FrontController extends HttpServlet {
	
	// HashMap 생성 (전역변수로)
	// 객체를 한 번만 생성 (싱글턴 패턴)
	// 각각의 클래스 string 타입 반환
	// 각각의 ___Service()를 하나로 묶을 수 있는 공통점 : ICommand
	HashMap<String, ICommand> map = new HashMap<>();
	
	
	@Override
	public void init() throws ServletException {
		// 누군가에 의해서 현재 servlet에 들어오게 된다면
		// servlet을 실행할 수 있게 servlet 객체를 생성하는 메소드
		// 이 메소드는 최초에 의해 한 번만 실행됨
		super.init();
		
		// "JoinService.do"라는 key 값에 JoinService()를 객체로 넣음
		// 조인서비스타입으로 넣었지만 아이커맨드로 업캐스팅 되어 들어감
		map.put("JoinService.do", new JoinService());  
		map.put("LoginService.do", new LoginService());
		map.put("LogoutService.do", new LogoutService());
		map.put("UpdateService.do", new UpdateService());
		map.put("MsgSendService.do", new MsgSendService());
		map.put("MsgAllDelete.do", new MsgAllDelete());
		map.put("MsgDelete.do", new MsgDelete());
	}
	
	
	private static final long serialVersionUID = 1L;

    // 커맨드 패턴 : 프론트컨트롤러는 단순히 요청만 받아들이고 일반 class에게 각각 명령을 내림 (이유 : 과부하, 용량 작게)
	// 일반 클래스는 기능 수행이 가능하지만 url이 없어서 웹에서 실행시킬수는 없음
	// client -> front controller -> class -> dao -> db -(jsp)-> front controller -(jsp)-> client
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 모든 요청을 받아들이는 하나의 servlet
		
		// 모두 하나의 servlet으로 이동하므로 어떤 기능을 사용할지 판별해야함
		// 원하는 기능을 요청한 url에 따라서(판별) 기능을 달리하기
		
		// 1. client가 요청한 URL 주소 가져오기
		String requestURI = request.getRequestURI();    // URI > URL		
//		System.out.println(requestURI);
				
		/** 서버의 URL
		  서버마다 부여되는 고유 번호 : IP(localhost)
		  ip에 들어가는 물리적인 번호 : 포트번호 (중복가능)
		  시작하는 프로젝트 이름(시작경로): Context Path
		  요청 
		  도메인 네임 시스템 : www.naver.com **/
		
		// 2. Context Path
		//   - 웹 어플리케이션(웹 프로젝트, 홈페이지)의 시작 주소
		String contextPath = request.getContextPath();
//		System.out.println(contextPath);
		
		
		// 3. client 요청 부분만 분리
		//   - .substring() : () 부분을 문자열에서 제외시킴
		String command = requestURI.substring(contextPath.length()+1);  // .length : 문자열의 길이(글자수) 
//		System.out.println(command);								    // +1 -> "/" 
		
		
		request.setCharacterEncoding("EUC-KR");
		
		// 자식 클래스에서 객체를 각각 생성했지만, ICommand라는 공통적인 부모를 구현하고 있으므로, 업캐스팅 가능 (부모로 형변환)
		// 부모의 익스큐트를 자식 클래스에서 재정의(오버라이드) 함
		// 업캐스팅을 해도 자식에서 재정의한 익스큐드가 나옴
		// 자식 모두 ICommand 형태로 바뀜
		
		
//		ICommand service = map.get(command);    // 인터페이스는 객체 생성 불가능
//												// command를 통해 들어온 요청에 따라 해당되는 객체(__service())가 나온다		
//		String moveUrl = service.execute(request, response);  // 서비스 매개변수를 클래스에 보내줌
//		response.sendRedirect(moveUrl);   // 클래스를 통해 전달받은 url을 client에게 보내주기

		
		// 위의 세줄을 축약한 것
		response.sendRedirect(map.get(command).execute(request, response));
}
}