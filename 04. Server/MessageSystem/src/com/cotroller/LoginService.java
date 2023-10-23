package com.cotroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class LoginService implements ICommand{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("로그인 기능 실행");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(email, pw);
		MemberDAO dao = new MemberDAO();
		
		// 로그인 성공 시, 회원의 모든 정보 불러옴 >> 모든 정보를 가지고 있는 DTO 사용
		MemberDTO info = dao.login(dto);
		
		if(info!=null) {
			System.out.println("로그인 성공");
			System.out.println(info.toString()); // 콘솔에서 로그인 정보 확인

			// 로그인 정보를 브라우저 종료 전까지 계속 가지고 있어야 한다!!
			// get방식(?url): 보안취약, 많은 양의 데이터 못보냄
			// request 영역에 저장 : 페이지 별로 데이터를 넘길 때마다 forward 방식을 항상 써줘야함
			// application : 내 정보가 다 같이 공유됨
			// cookie : 텍스트 형태만 저장됨, 보안취약 
			// >> session으로 저장!! 
			
			// **세션에 로그인 정보 저장**
			// - Session : 서버에 있는 영역으로, 사람마다 다르게 공간이 할당되어 있음 
			//    >> 각자의 공간을 구분하기 위해 고유한 key 필요 : cookie JSESSIONID
			// - 세션 만료 : 웹 브라우저 종료 시 
			
			// 사용자가 요청한 사용자의 키를 가져와서 저장
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			
		}else {
			System.out.println("로그인 실패");
		}
		
		return "main.jsp";
	}
}
