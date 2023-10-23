<%@page import="com.model.MessageDTO"%>
<%@page import="com.model.MessageDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
	
		<%-- 세션에 저장되어 있는 로그인을 한 사람의 정보 가져오기 --%>
		<%
				// info는 MessageDTO 형태로 저장했기 때문에 형태 그대로
				// session에는 항상 object 형태로 변환되어 저장되기 때문에 MessageDTO로 다운캐스팅
				MemberDTO info = (MemberDTO)session.getAttribute("info");
				
				// 페이지 처음 실행 시: info 값 null, 로그인 후 다시 메인페이지 실행: 객체가 들어가 있음(not null)
			%>
		
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<a href="index.html" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
						<nav>
							<%-- 어떤 클라이언트가 요청을 하든 하나의 servlet으로 들어가게 하는 방법
								 : ction 끝에 .do로 끝나도록(꼭 .do가 아니어도 됨 동일한 단어로)
								 모든 일을 처리할 하나의 servlet을 만든다 (front controller) --%>
								<%if(info!=null){%>
									<a href="update.jsp">개인정보수정</a>
									<!-- update.jsp >> UpdateService.do >> FrontController -->
									<a href="LogoutService.do">로그아웃</a>
								<%}else{ %>
									<a href="#menu">로그인</a>
								<%} %>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">	
						<ul class="links">
							<li><h5>로그인</h5></li>
								<form action="LoginService.do" method="post">
									<li><input type="text" name="email" placeholder="Email을 입력하세요"></li>
									<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
								</form>
						</ul>
						<ul class="actions vertical">
							<li><h5>회원가입</h5></li>
								<form action="JoinService.do" method="post">
									<li><input type="text" name="email" placeholder="Email을 입력하세요"></li>
									<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
									<li><input type="text" name="phone" placeholder="전화번호를 입력하세요"></li>
									<li><input type="text" name="addr" placeholder="집주소를 입력하세요"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>			
				<!-- Banner -->
					<section id="banner" class="major">
						<div class="inner">
							<header class="major">
									<%-- 로그인 성공 시, info는 null값을 갖지 않음 --%>
										<% if(info!=null){ %>
											<h1><%=info.getEmail() %>님 환영합니다!</h1>
										<% }else { %>
											<h1>로그인을 먼저 해주세요.</h1>
										<%}%>
										<!-- <h1>로그인 한 세션아이디를 출력해주세요</h1> -->
								<!-- 로그인 후 로그인 한 사용자의 세션아이디로 바꾸시오.
									 ex)smart님 환영합니다 -->
							</header>
							<div class="content">
								<p>아래는 지금까지 배운 웹 기술들입니다.<br></p>
								<ul class="actions">
									<li><a href="#one" class="button next scrolly">확인하기</a></li>
								</ul>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one" class="tiles">
								<article>
									<span class="image">
										<img src="images/pic01.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">HTML</a></h3>
										<p>홈페이지를 만드는 기초 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic02.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">CSS</a></h3>
										<p>HTML을 디자인해주는 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic03.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Servlet/JSP</a></h3>
										<p>Java를 기본으로 한 웹 프로그래밍 언어/스크립트 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic04.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">JavaScript</a></h3>
										<p>HTML에 기본적인 로직을 정의할 수 있는 언어</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic05.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">MVC</a></h3>
										<p>웹 프로젝트 중 가장 많이 사용하는 디자인패턴</p>
									</header>
								</article>
								<article>
									<span class="image">
										<img src="images/pic06.jpg" alt="" />
									</span>
									<header class="major">
										<h3><a href="#" class="link">Web Project</a></h3>
										<p>여러분의 최종프로젝트에 웹 기술을 활용하세요!</p>
									</header>
								</article>
							</section>
					<!-- Two -->
							<section id="two">
								<div class="inner">
									<header class="major">
										<h2>나에게 온 메세지 확인하기</h2>
									</header>
									<p></p>
									<ul class="actions">
										<%-- 로그인 판단 (로그인 정보 : info)--%>
										<%if(info!=null){ %>
										<%
											// 데이터베이스에서 나에게 온 메세지만 가져오기
											MessageDAO dao = new MessageDAO();
										
										    // 하나의 MessageDTO객체는 하나의 메세지를 의미한다
										    // 메세지의 수를 알 수 없기 때문에 arraylist
										    // 메서드를 이용하여 ArrayList에 메세지들 불러와서 저장하기
										    // info.getEmail(): info에 저장된 회원정보의 이메일 값 가져오기
											ArrayList<MessageDTO> list = dao.select(info.getEmail()); 
										    
										    for(int i = 0; i < list.size(); i++){
										    	// 리스트 개수만큼 반복하면서 받은 메세지 불러오기
										    	out.print("<li>");
										    	out.print((i+1) + ". ");
										    	// list의 i번째 메세지에서 name 값 불러오기
										    	out.print(list.get(i).getSend_name() + " - ");
										    	out.print(list.get(i).getContent() + " (");
										    	out.print(list.get(i).getSend_date() + ")");
										    	
										    	out.print(" ----------  ");
										    	// 해당 메세지를 삭제하기 위해서 
										    	// 메세지의 고유 정보(primary key)를 MsgDelete에 넘겨준다
										    	// 쿼리스트링 ? 뒤에 정보를 붙여 넘겨주는 것
										    	out.print("<a href='MsgDelete.do?num=");
										    	out.print(list.get(i).getNum() + "'>삭제</a>");	
										    	out.print("</li>");
										    	out.print("<br>"); 	
										    }
										%>
										<%}else{ %>
											<li>로그인을 하세요.</li>
										<%} %>
										
										<li><a href="MsgAllDelete.do" class="button next scrolly">전체삭제하기</a></li>
									</ul>
								</div>
							</section>

					</div>

				<!-- Contact -->
					<section id="contact">
						<div class="inner">
							<section>
								<form action="MsgSendService.do" method="post">
								<div class="field half first">
										<label for="name">Name</label>
										<input type="text" id="name" name="send_name" placeholder="보내는 사람 이름" />
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text" id="email" name="receive_email" placeholder="받는 사람 이메일"/>
									</div>

									<div class="field">
										<label for="message">Message</label>
										<textarea id="message" rows="6" name="content"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="special" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>
							
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>Email</h3>
										<%-- 로그인 정보가 저장되어 있는 info에 데이터가
											있을 경우, 이메일 값을 가져옴 --%>
										<% if(info!=null){%>
											<a href="#"><%=info.getEmail() %></a>
										<% }else{ %>
											<a>로그인 한 사람의 이메일을 출력</a>										
										<% } %>
										<!-- 로그인 한 사용자의 이메일을 출력하시오 -->
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>Phone</h3>
										<% if(info!=null){ %>
											<span><%=info.getPhone() %></span>
										<% }else{ %>
											<span>로그인 한 사람의 전화번호를 출력</span>										
										<% } %>
										<!-- 로그인 한 사용자의 전화번호를 출력하시오 -->
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>Address</h3>
										<% if(info!=null){%>
											<span><%=info.getAddr() %></span>
										<% }else{ %>
											<span>로그인 한 사람의 집주소를 출력</span>
										<% } %>
										<!-- 로그인 한 사용자의 집주소를 출력하시오 -->
									</div>
								</section>
							</section>					
						</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>

