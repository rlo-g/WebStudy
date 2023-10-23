<%@page import="com.model.BadgeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.BadgeDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>나만의 여행, PPLAN</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="homepage is-preload">
		<%
			MemberDTO info = (MemberDTO)session.getAttribute("info");
		%>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="index.html" id="logo">PPLAN</a></h1>
								<hr />
								<%if(info != null){ %>
								<%	BadgeDAO dao = new BadgeDAO();
								
									ArrayList<BadgeDTO> list = dao.badge(info.getId()); %>
									<p> <%out.print("<img src='" + list.get(0).getBadge_img() + "' alt='' style='width: 30px; height: 30px;'/>"); %>
									<%=info.getNick() %>님 환영합니다</p>
								<%}else{%>
									<p>나만의 여행, 지금 만들어보세요</p>
								<%} %>
							</header>
							<footer>
							    <!-- <a href="#banner" data-text="Start" id="new-btn"></a> -->
								<a href="#banner" class="button circled scrolly">Start</a>
							</footer>
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
								<li><a href="left-sidebar.html">Left Sidebar</a></li>
								
								<%if(info != null){ %>
									<li><a href="menu_myPage.jsp">마이페이지</a></li>
									<li><a href="../LogoutService">로그아웃</a></li>
								<%}else{%>
								<li><a href="login/login.jsp">로그인</a></li>
								<%} %>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>Hi. You're looking at <strong>Helios</strong>.</h2>
						<p>
							A (free) responsive site template by <a href="http://html5up.net">HTML5 UP</a>.
							Built with HTML5/CSS3 and released under the <a href="http://html5up.net/license">CCA</a> license.
						</p>
					</header>
				</section>

			<!-- Carousel -->
				<section class="carousel">
					<div class="reel">

						<article>
							<a href="#" class="image featured"><img src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/jeju/overview/introduction/g-0807.jpg.thumb.768.768.jpg" alt=""/></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://www.lottehotel.com/content/dam/lotte-hotel/lotte/jeju/overview/introduction/g-0809.jpg.thumb.768.768.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://mediaim.expedia.com/destination/1/d28b9de100e3957c0f38d1644562f390.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202110/20/32ec3ee6-fad9-440d-95ea-628ff6453a48.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://api.cdn.visitjeju.net/photomng/imgpath/201807/12/2a73a721-cd77-41aa-9efc-b061c55bca90.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202110/28/0b66710e-4fda-4cd7-8f10-803ac4c52a61.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202111/12/ed9c60f8-7424-42a7-bf27-aa503fe11453.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202111/10/751bfda5-574c-4307-9acc-53786451ca97.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202101/09/df72d9ff-df5a-41ee-b4bc-933c57580879.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="https://api.cdn.visitjeju.net/photomng/imgpath/201912/11/75160dd4-c210-4e08-b2a3-bdfadfd1512c.jpg" alt="" /></a>
							<!--  <header>
								<h3><a href="#">Varius magnis sollicitudin</a></h3>
							</header>
							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p> -->
						</article>

					</div>
				</section>

			<!-- Main -->
				<!--  <div class="wrapper style2">

					<article id="main" class="container special">
						<a href="#" class="image featured"><img src="images/pic06.jpg" alt="" /></a>
						<header>
							<h2><a href="#">Sed massa imperdiet magnis</a></h2>
							<p>
								Sociis aenean eu aenean mollis mollis facilisis primis ornare penatibus aenean. Cursus ac enim
								pulvinar curabitur morbi convallis. Lectus malesuada sed fermentum dolore amet.
							</p>
						</header>
						<p></p>
						<footer>
							<a href="#" class="button">Continue Reading</a>
						</footer>
					</article>

				</div> -->

			<!-- Features -->
				<!-- <div class="wrapper style1">

					<section id="features" class="container special">
						<header>
							<h2>Morbi ullamcorper et varius leo lacus</h2>
							<p>Ipsum volutpat consectetur orci metus consequat imperdiet duis integer semper magna.</p>
						</header>
						<div class="row">
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic07.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Gravida aliquam penatibus</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Sed quis rhoncus placerat</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic09.jpg" alt="" /></a>
								<header>
									<h3><a href="#">Magna laoreet et aliquam</a></h3>
								</header>
								<p>
									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam
									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.
								</p>
							</article>
						</div>
					</section>

				</div> -->

			<!-- Footer -->
				<div id="footer">
					<div class="container">
								
						<div class="row">
							<div class="col-12">

								<!-- Contact -->
									<section class="contact">
										<header>
											<h3>PPLAN</h3>
										</header>
										<hr>
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
											<li>&copy; PPLAN. All rights reserved.</li>
										</ul>
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