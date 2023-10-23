<!DOCTYPE HTML>
<%@page import="com.model.LocaDTO"%>
<%@page import="com.model.LocaDAO"%>
<%@page import="com.model.BadgeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.BadgeDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@page import="java.net.URLEncoder"%>
<html>
   <head>
      <title>마이페이지</title>
      <meta charset="EUC-KR" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
   </head>
   <body class="left-sidebar is-preload">
      <% MemberDTO info = (MemberDTO)session.getAttribute("info"); %>
      <div id="page-wrapper">

         <!-- Header -->
            <div id="header">

               <!-- Inner -->
                  <div class="inner">
                     <header>
                        <h1><a href="main.jsp" id="logo">PPLAN</a></h1>
                        <%if(info !=null){ %>
                        <h3><%=info.getId() %>'s Page</h3>
                        <%} %>
                     </header>
                  </div>

               <!-- Nav -->
                  <nav id="nav">
                     <ul>
                        <li><a href="main.jsp">Home</a></li>
                        <li>
                           <a href="#">Dropdown</a>
                           <ul>
                              <li><a href="#">Lorem ipsum dolor</a></li>
                              <li><a href="#">Magna phasellus</a></li>
                              <li><a href="#">Etiam dolore nisl</a></li>
                              <li>
                                 <a href="#">And a submenu &hellip;</a>
                                 <ul>
                                    <li><a href="#">Lorem ipsum dolor</a></li>
                                    <li><a href="#">Phasellus consequat</a></li>
                                    <li><a href="#">Magna phasellus</a></li>
                                    <li><a href="#">Etiam dolore nisl</a></li>
                                 </ul>
                              </li>
                              <li><a href="#">Veroeros feugiat</a></li>
                           </ul>
                        </li>
                        <li><a href="menu_myPage.jsp">마이페이지</a></li>
                        <!-- <li><a href="login/login.jsp">로그인</a></li> : 이미 로그인 해서 없어도 될 것 같음 -->
                        <%if(info !=null){ %>
                        <li><a href="../LogoutService">로그아웃</a></li>
                        <%} %>
                     </ul>
                  </nav>

            </div>


         <!-- Main -->
            <div class="wrapper style1">

               <div class="container">
                  <div class="row gtr-200">
                     <div class="col-4 col-12-mobile" id="sidebar">
                        <section>
                           <header>
                              <h3><a href="#" id="mypageLink">MY PAGE</a></h3>
                           </header>
                           <br>
                           <div class="row gtr-50">
                              <div class="col-8">
                                 <a href="#" class="image fit" id="modifyLink"><h4>MODIFY</h4></a>                              
                              </div>
                              
                              <div class="col-8">
                                 <a href="#" class="image fit" id="scheduleLink"><h4>SCHEDULE</h4></a>                           
                              </div>
                              
                              <div class="col-8">
                                 <a href="#" class="image fit" id='badgeLink'><h4>BADGE</h4></a>
                              </div> 
                           </div>
                        </section>
                     </div>
                     
                     <div class="col-8 col-12-mobile imp-mobile" id="content">
                        <article id="main">
                        	<div id="myPageScreen">
						  	   <header><h3><%=info.getNick() %>님 환영합니다!</h3></header>
                           	   <a href="#" class="image featured"><img src="images/pic06.jpg" alt="" /></a>
							</div>
							<script>
							document.addEventListener('DOMContentLoaded', function() {
    							// "MY PAGE" 텍스트를 클릭 시 이벤트 생성
    							function showMyPageScreen() {
        							document.getElementById('myPageScreen').style.display = 'block';
       								document.getElementById('modifyScreen').style.display = 'none';
       								document.getElementById('scheduleScreen').style.display = 'none';
        							document.getElementById('badgeScreen').style.display = 'none';
    							}
    							// "MY PAGE" 링크 요소를 가져오기
   								 var mypageLink = document.getElementById('mypageLink');

   								// "MY PAGE" 링크 요소에 클릭 이벤트 등록
   								 mypageLink.addEventListener('click', function(event) {
       								 event.preventDefault();
      								  // MY PAGE 화면을 보이도록 함수를 호출합니다.
        							 showMyPageScreen();
   								 });
							});
							</script>
							
							
								<div id="modifyScreen" style="display: none;">
									<header>MODIFY</header>
									<form action="../UpdateService" method="post">
									<div class="form-field">
										<label for="password">Password</label> 
										<input name="pw" type="password" id="password">
									</div>
									<br>
									<div class="form-field">
										<label for="nick">NickName</label> <input name="nick"
											type="text" id="nick"> <span id="nickCheck"></span>
									</div>
									<br>
									<button type="submit" class="btn-update">UPDATE</button>
								</form>
								</div>
								
								<!-- 닉네임 중복 -->
								<script  src="http://code.jquery.com/jquery-latest.min.js"></script>	
								
								<script type="text/javascript">
     							$(window).load(function(){
           
          	 					$("#nick").keyup(function(){
              						const nickCheck = document.getElementById("nickCheck");
              						let inputNick = $("#nick").val();
              
         
              						$.ajax({
                 						url : "../nickCheck",
                 						data : {"nick" : inputNick},
                 						success : function(text){
                    					if(text==="true"){
                          					nickCheck.innerText = "중복된 닉네임입니다.";
                    					}else{
                       						nickCheck.innerText = "사용 가능한 닉네임입니다.";
                    					}
                 						},
                 						error : function(e){
                    						console.log(e);
                 						}
              							});   
           							});
        						});

     							
							    // 페이지 로딩 완료 시 이벤트를 등록
								document.addEventListener('DOMContentLoaded', function() {
   								// "MODIFY" 텍스트를 클릭 시 정보 수정 창 보임
   								 	function showModifyScreen() {
        								document.getElementById('modifyScreen').style.display = 'block';
    								}
    							// "MODIFY" 링크 요소를 가져옵니다.
    							var modifyLink = document.getElementById('modifyLink');

    							// "MODIFY" 링크 요소에 클릭 이벤트를 등록
    							modifyLink.addEventListener('click', function(event) {
       							 	// 기본 동작 (링크 이동)을 취소합니다.
       							 	event.preventDefault();
        							// 정보 수정 화면을 보이도록 함수 호출 + myPageScreen 숨김
        							showModifyScreen();
        							myPageScreen.style.display = 'none';
        							scheduleScreen.style.display='none';
        							badgeScreen.style.display = 'none';
    								});
								});
								</script>
								
								
								<div id="scheduleScreen" style="display: none;">
									<header>SCHEDULE</header>
									<!-- 일정 페이지 -->
									<br>
									<!--   <form action="#" method="post"> -->
									<div id="scheduleContainer">
										<div class="schedule-list">
											<ul>
												<li><label><input type="radio" name="mem_schedule"
														value="schedule1" class="radio-button"><a href="#"
														class="scheduleLink">어떤 식당 > 어떤 박물관 > 어떤 해안가 > 어떤 카페</a></label></li>
												<li><label><input type="radio" name="mem_schedule"
														value="schedule2" class="radio-button"><a href="#"
														class="scheduleLink">무슨 식당 > 어디해안가 > 어디 식당</a></label></li>
												<li><label><input type="radio" name="mem_schedule"
														value="schedule3" class="radio-button"><a href="#"
														class="scheduleLink">한라산 > 스타벅스 > OO식물원 > 제주공항</a></label></li>
																											
											</ul>
											<div class="recommend-btn">
												<button id="recommendButton">일정추천</button>
											</div>
											<div class="schedule-comment" style=" display:none;">
												<div class="comment-content">
												<h3>한줄평 작성</h3>
												 <textarea id="reviewTextArea" class="review-textarea" placeholder="한줄평을 작성해주세요..."></textarea>
                                      			 <div class="submit-review">
                                          		<button type="submit" value="comment" id="submitReviewButton">작성 완료</button>
												</div>	
											</div>
										</div>
										</div>

									<div class="schedule-map" id="mapContainer" style="display:none;">
											<div id="map" style="width:350px;height:350px;"></div>
											<script type="text/javascript"
												src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f93746e33ed79e4637c2a1c0f03f736a"></script>
											<script>
												var container = document.getElementById('map');
												var options = {
													center : new kakao.maps.LatLng(35.1466, 126.9223),
													level : 3
												};

												var map = new kakao.maps.Map(container, options);

												// 마커가 표시될 위치입니다 
												var markerPosition = new kakao.maps.LatLng(35.1466, 126.9223);

												// 마커를 생성합니다
												var marker = new kakao.maps.Marker(
														{
															position : markerPosition
														});

												// 마커가 지도 위에 표시되도록 설정합니다
												marker.setMap(map);
											</script>
										</div>
 
									</div>
									<!-- </form> -->
									</div>
									<script>
    									const recommendButton = document.getElementById('recommendButton');
    									const commentSection = document.querySelector('.schedule-comment');
    									const closeButton = document.getElementById('closeButton');

    									recommendButton.addEventListener('click', () => {
    								        // recommendButton 버튼을 감추기
    								        recommendButton.style.display = 'none';
        									// 선택한 일정에 대한 한줄평 작성 영역을 보이게 설정
        									commentSection.style.display = 'block';
    									});
    								
    									

    									// submitReviewButton 클릭 이벤트 등의 코드
									</script>

								
								
								
								<script>
								document.addEventListener('DOMContentLoaded', function() {
   								 	function showScheduleScreen() {
        								document.getElementById('scheduleScreen').style.display = 'block';
    								}
    							var scheduleLink = document.getElementById('scheduleLink');

    							scheduleLink.addEventListener('click', function(event) {
       							 	event.preventDefault();
        							showScheduleScreen();
        							
       						        var scheduleContainer = document.getElementById('scheduleContainer');

       						        if (scheduleContainer.style.display === 'none') {
       						        	scheduleContainer.style.display = 'block'; 
       						        }        							
        							
        							myPageScreen.style.display = 'none';
        							modifyScreen.style.display = 'none';
        							badgeScreen.style.display = 'none';
        							
    								});
								});
								</script>
								<script>
								document.addEventListener('DOMContentLoaded', function() {
   									var scheduleLinks = document.querySelectorAll('.scheduleLink');

   							 		scheduleLinks.forEach(function(link) {
        								link.addEventListener('click', function(event) {
           							 		event.preventDefault();

            								var mapContainer = document.getElementById('mapContainer');

            								if (mapContainer.style.display === 'none') {
                								mapContainer.style.display = 'block';
            								} else {
                								mapContainer.style.display = 'none';
            								}
        										});
    										});
										});
								</script>
								
								
								<div id="badgeScreen" style="display: none;">
									<header>BADGE</header>
									<!-- 뱃지 페이지 -->
									<br>
									<div id="imageContainer" style="display: none;">
										<div class="badge-list">
										<%-- 뱃지 fk 삭제해야 됨 --%>
											<ul>
												<%if(info!=null){ %>
												<%
													BadgeDAO dao = new BadgeDAO();
												
													ArrayList<BadgeDTO> list = dao.badge(info.getId());
													
													for(int i = 0; i < list.size(); i++){
														out.print("<li>");
														out.print("<div class=\"img-area\">");
														out.print("<img src='" + list.get(i).getBadge_img() + "' alt=''/>");
														out.print("</div>");
														out.print("<span class='tit'>" + list.get(i).getBadge_name() + "</span>");	
													}}%>
													
										
												<li>
													<div class="img-area">
														<img src="ham.jpg" alt="" />
													</div>
													<span class="tit">브이커햄</span>
												</li>
												<li>
													<div class="img-area">
														<img src="ham.jpg" alt="" />
													</div>
													<span class="tit">브이커햄</span>
												</li>											
												<li>
													<div class="img-area">
														<img src="tin.png" alt="" />
													</div>
													<span class="tit">틴틴팅클</span>
												</li>											
												<li>
													<div class="img-area">
														<img src="tin.png" alt="" />
													</div>
													<span class="tit">틴틴팅클</span>
												</li>
												<li>
													<div class="img-area">
														<img src="tin.png" alt="" />
													</div>
													<span class="tit">틴틴팅클</span>
												</li>																						
											</ul>
										</div> 
									</div>
									</div>
								
								
								<script>
								document.addEventListener('DOMContentLoaded', function() {
   								 	function showBadgeScreen() {
        								document.getElementById('badgeScreen').style.display = 'block';
    								}
    							var badgeLink = document.getElementById('badgeLink');

    							badgeLink.addEventListener('click', function(event) {
       							 	event.preventDefault();
       							 	showBadgeScreen();
       							 	
       						        // 이미지들을 담고 있는 div 요소를 가져옵니다.
       						        var imageContainer = document.getElementById('imageContainer');

       						        if (imageContainer.style.display === 'none') {
       						            imageContainer.style.display = 'block'; // 보이도록 설정
       						        }
       							 	
        							myPageScreen.style.display = 'none';
        							modifyScreen.style.display = 'none';
        							scheduleScreen.style.display = 'none';
        							
    								});
								});
								</script>								



                        </article>
						</div>
								
                  
                     </div>
                  </div>
               </div>

            </div>


         <!-- Footer -->
            <div id="footer">
               <div class="container">
                  <div class="row">

                  </div>
                  <hr />
                  <div class="row">
                     <div class="col-12">

                 <!-- Contact -->
                           <section class="contact">
                              <header>
                                 <h3>나만의 여행, PPLAN</h3>
                              </header>
                              <p>TROPHY</p>
                              <ul class="icons">
                                 <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                                 <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                                 <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                                 <li><a href="#" class="icon brands fa-pinterest"><span class="label">Pinterest</span></a></li>
                                 <li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
                                 <li><a href="#" class="icon brands fa-linkedin-in"><span class="label">Linkedin</span></a></li>
                              </ul>
                           </section>

                        <!-- Copyright -->
                           <div class="copyright">
                              <ul class="menu">
                                 <li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                              </ul>
                           </div>

                     </div>

                  </div>
               </div>
            </div>

      </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
</html>