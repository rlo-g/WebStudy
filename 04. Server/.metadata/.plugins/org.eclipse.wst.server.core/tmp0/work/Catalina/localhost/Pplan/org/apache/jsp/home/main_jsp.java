/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.78
 * Generated at: 2023-08-11 02:53:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.home;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.model.BadgeDTO;
import java.util.ArrayList;
import com.model.BadgeDAO;
import com.model.MemberDTO;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.model.BadgeDTO");
    _jspx_imports_classes.add("com.model.BadgeDAO");
    _jspx_imports_classes.add("com.model.MemberDTO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<!--\r\n");
      out.write("	Helios by HTML5 UP\r\n");
      out.write("	html5up.net | @ajlkn\r\n");
      out.write("	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<title>나만의 여행, PPLAN</title>\r\n");
      out.write("		<meta charset=\"utf-8\" />\r\n");
      out.write("		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"assets/css/main.css\" />\r\n");
      out.write("		<noscript><link rel=\"stylesheet\" href=\"assets/css/noscript.css\" /></noscript>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body class=\"homepage is-preload\">\r\n");
      out.write("		");

			MemberDTO info = (MemberDTO)session.getAttribute("info");
		
      out.write("\r\n");
      out.write("		<div id=\"page-wrapper\">\r\n");
      out.write("\r\n");
      out.write("			<!-- Header -->\r\n");
      out.write("				<div id=\"header\">\r\n");
      out.write("\r\n");
      out.write("					<!-- Inner -->\r\n");
      out.write("						<div class=\"inner\">\r\n");
      out.write("							<header>\r\n");
      out.write("								<h1><a href=\"index.html\" id=\"logo\">PPLAN</a></h1>\r\n");
      out.write("								<hr />\r\n");
      out.write("								");
if(info != null){ 
      out.write("\r\n");
      out.write("								");
	BadgeDAO dao = new BadgeDAO();
								
									ArrayList<BadgeDTO> list = dao.badge(info.getId()); 
      out.write("\r\n");
      out.write("									<p> ");
out.print("<img src='" + list.get(0).getBadge_img() + "' alt='' style='width: 30px; height: 30px;'/>"); 
      out.write("\r\n");
      out.write("									");
      out.print(info.getNick() );
      out.write("님 환영합니다</p>\r\n");
      out.write("								");
}else{
      out.write("\r\n");
      out.write("									<p>나만의 여행, 지금 만들어보세요</p>\r\n");
      out.write("								");
} 
      out.write("\r\n");
      out.write("							</header>\r\n");
      out.write("							<footer>\r\n");
      out.write("							    <!-- <a href=\"#banner\" data-text=\"Start\" id=\"new-btn\"></a> -->\r\n");
      out.write("								<a href=\"#banner\" class=\"button circled scrolly\">Start</a>\r\n");
      out.write("							</footer>\r\n");
      out.write("						</div>\r\n");
      out.write("\r\n");
      out.write("					<!-- Nav -->\r\n");
      out.write("						<nav id=\"nav\">\r\n");
      out.write("							<ul>\r\n");
      out.write("								<li><a href=\"main.jsp\">Home</a></li>\r\n");
      out.write("								<li>\r\n");
      out.write("									<a href=\"#\">Dropdown</a>\r\n");
      out.write("									<ul>\r\n");
      out.write("										<li><a href=\"#\">Lorem ipsum dolor</a></li>\r\n");
      out.write("										<li><a href=\"#\">Magna phasellus</a></li>\r\n");
      out.write("										<li><a href=\"#\">Etiam dolore nisl</a></li>\r\n");
      out.write("										<li>\r\n");
      out.write("											<a href=\"#\">And a submenu &hellip;</a>\r\n");
      out.write("											<ul>\r\n");
      out.write("												<li><a href=\"#\">Lorem ipsum dolor</a></li>\r\n");
      out.write("												<li><a href=\"#\">Phasellus consequat</a></li>\r\n");
      out.write("												<li><a href=\"#\">Magna phasellus</a></li>\r\n");
      out.write("												<li><a href=\"#\">Etiam dolore nisl</a></li>\r\n");
      out.write("											</ul>\r\n");
      out.write("										</li>\r\n");
      out.write("										<li><a href=\"#\">Veroeros feugiat</a></li>\r\n");
      out.write("									</ul>\r\n");
      out.write("								</li>\r\n");
      out.write("								<li><a href=\"left-sidebar.html\">Left Sidebar</a></li>\r\n");
      out.write("								\r\n");
      out.write("								");
if(info != null){ 
      out.write("\r\n");
      out.write("									<li><a href=\"menu_myPage.jsp\">마이페이지</a></li>\r\n");
      out.write("									<li><a href=\"../LogoutService\">로그아웃</a></li>\r\n");
      out.write("								");
}else{
      out.write("\r\n");
      out.write("								<li><a href=\"login/login.jsp\">로그인</a></li>\r\n");
      out.write("								");
} 
      out.write("\r\n");
      out.write("							</ul>\r\n");
      out.write("						</nav>\r\n");
      out.write("\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("			<!-- Banner -->\r\n");
      out.write("				<section id=\"banner\">\r\n");
      out.write("					<header>\r\n");
      out.write("						<h2>Hi. You're looking at <strong>Helios</strong>.</h2>\r\n");
      out.write("						<p>\r\n");
      out.write("							A (free) responsive site template by <a href=\"http://html5up.net\">HTML5 UP</a>.\r\n");
      out.write("							Built with HTML5/CSS3 and released under the <a href=\"http://html5up.net/license\">CCA</a> license.\r\n");
      out.write("						</p>\r\n");
      out.write("					</header>\r\n");
      out.write("				</section>\r\n");
      out.write("\r\n");
      out.write("			<!-- Carousel -->\r\n");
      out.write("				<section class=\"carousel\">\r\n");
      out.write("					<div class=\"reel\">\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://www.lottehotel.com/content/dam/lotte-hotel/lotte/jeju/overview/introduction/g-0807.jpg.thumb.768.768.jpg\" alt=\"\"/></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://www.lottehotel.com/content/dam/lotte-hotel/lotte/jeju/overview/introduction/g-0809.jpg.thumb.768.768.jpg\" alt=\"\" /></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://mediaim.expedia.com/destination/1/d28b9de100e3957c0f38d1644562f390.jpg\" alt=\"\" /></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://api.cdn.visitjeju.net/photomng/imgpath/202110/20/32ec3ee6-fad9-440d-95ea-628ff6453a48.jpg\" alt=\"\" /></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://api.cdn.visitjeju.net/photomng/imgpath/201807/12/2a73a721-cd77-41aa-9efc-b061c55bca90.jpg\" alt=\"\" /></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://api.cdn.visitjeju.net/photomng/imgpath/202110/28/0b66710e-4fda-4cd7-8f10-803ac4c52a61.jpg\" alt=\"\" /></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://api.cdn.visitjeju.net/photomng/imgpath/202111/12/ed9c60f8-7424-42a7-bf27-aa503fe11453.jpg\" alt=\"\" /></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://api.cdn.visitjeju.net/photomng/imgpath/202111/10/751bfda5-574c-4307-9acc-53786451ca97.jpg\" alt=\"\" /></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://api.cdn.visitjeju.net/photomng/imgpath/202101/09/df72d9ff-df5a-41ee-b4bc-933c57580879.jpg\" alt=\"\" /></a>\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("						<article>\r\n");
      out.write("							<a href=\"#\" class=\"image featured\"><img src=\"https://api.cdn.visitjeju.net/photomng/imgpath/201912/11/75160dd4-c210-4e08-b2a3-bdfadfd1512c.jpg\" alt=\"\" /></a>\r\n");
      out.write("							<!--  <header>\r\n");
      out.write("								<h3><a href=\"#\">Varius magnis sollicitudin</a></h3>\r\n");
      out.write("							</header>\r\n");
      out.write("							<p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p> -->\r\n");
      out.write("						</article>\r\n");
      out.write("\r\n");
      out.write("					</div>\r\n");
      out.write("				</section>\r\n");
      out.write("\r\n");
      out.write("			<!-- Main -->\r\n");
      out.write("				<!--  <div class=\"wrapper style2\">\r\n");
      out.write("\r\n");
      out.write("					<article id=\"main\" class=\"container special\">\r\n");
      out.write("						<a href=\"#\" class=\"image featured\"><img src=\"images/pic06.jpg\" alt=\"\" /></a>\r\n");
      out.write("						<header>\r\n");
      out.write("							<h2><a href=\"#\">Sed massa imperdiet magnis</a></h2>\r\n");
      out.write("							<p>\r\n");
      out.write("								Sociis aenean eu aenean mollis mollis facilisis primis ornare penatibus aenean. Cursus ac enim\r\n");
      out.write("								pulvinar curabitur morbi convallis. Lectus malesuada sed fermentum dolore amet.\r\n");
      out.write("							</p>\r\n");
      out.write("						</header>\r\n");
      out.write("						<p></p>\r\n");
      out.write("						<footer>\r\n");
      out.write("							<a href=\"#\" class=\"button\">Continue Reading</a>\r\n");
      out.write("						</footer>\r\n");
      out.write("					</article>\r\n");
      out.write("\r\n");
      out.write("				</div> -->\r\n");
      out.write("\r\n");
      out.write("			<!-- Features -->\r\n");
      out.write("				<!-- <div class=\"wrapper style1\">\r\n");
      out.write("\r\n");
      out.write("					<section id=\"features\" class=\"container special\">\r\n");
      out.write("						<header>\r\n");
      out.write("							<h2>Morbi ullamcorper et varius leo lacus</h2>\r\n");
      out.write("							<p>Ipsum volutpat consectetur orci metus consequat imperdiet duis integer semper magna.</p>\r\n");
      out.write("						</header>\r\n");
      out.write("						<div class=\"row\">\r\n");
      out.write("							<article class=\"col-4 col-12-mobile special\">\r\n");
      out.write("								<a href=\"#\" class=\"image featured\"><img src=\"images/pic07.jpg\" alt=\"\" /></a>\r\n");
      out.write("								<header>\r\n");
      out.write("									<h3><a href=\"#\">Gravida aliquam penatibus</a></h3>\r\n");
      out.write("								</header>\r\n");
      out.write("								<p>\r\n");
      out.write("									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam\r\n");
      out.write("									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.\r\n");
      out.write("								</p>\r\n");
      out.write("							</article>\r\n");
      out.write("							<article class=\"col-4 col-12-mobile special\">\r\n");
      out.write("								<a href=\"#\" class=\"image featured\"><img src=\"images/pic08.jpg\" alt=\"\" /></a>\r\n");
      out.write("								<header>\r\n");
      out.write("									<h3><a href=\"#\">Sed quis rhoncus placerat</a></h3>\r\n");
      out.write("								</header>\r\n");
      out.write("								<p>\r\n");
      out.write("									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam\r\n");
      out.write("									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.\r\n");
      out.write("								</p>\r\n");
      out.write("							</article>\r\n");
      out.write("							<article class=\"col-4 col-12-mobile special\">\r\n");
      out.write("								<a href=\"#\" class=\"image featured\"><img src=\"images/pic09.jpg\" alt=\"\" /></a>\r\n");
      out.write("								<header>\r\n");
      out.write("									<h3><a href=\"#\">Magna laoreet et aliquam</a></h3>\r\n");
      out.write("								</header>\r\n");
      out.write("								<p>\r\n");
      out.write("									Amet nullam fringilla nibh nulla convallis tique ante proin sociis accumsan lobortis. Auctor etiam\r\n");
      out.write("									porttitor phasellus tempus cubilia ultrices tempor sagittis. Nisl fermentum consequat integer interdum.\r\n");
      out.write("								</p>\r\n");
      out.write("							</article>\r\n");
      out.write("						</div>\r\n");
      out.write("					</section>\r\n");
      out.write("\r\n");
      out.write("				</div> -->\r\n");
      out.write("\r\n");
      out.write("			<!-- Footer -->\r\n");
      out.write("				<div id=\"footer\">\r\n");
      out.write("					<div class=\"container\">\r\n");
      out.write("								\r\n");
      out.write("						<div class=\"row\">\r\n");
      out.write("							<div class=\"col-12\">\r\n");
      out.write("\r\n");
      out.write("								<!-- Contact -->\r\n");
      out.write("									<section class=\"contact\">\r\n");
      out.write("										<header>\r\n");
      out.write("											<h3>PPLAN</h3>\r\n");
      out.write("										</header>\r\n");
      out.write("										<hr>\r\n");
      out.write("										<p>TROPHY</p>\r\n");
      out.write("										<ul class=\"icons\">\r\n");
      out.write("											<li><a href=\"#\" class=\"icon brands fa-twitter\"><span class=\"label\">Twitter</span></a></li>\r\n");
      out.write("											<li><a href=\"#\" class=\"icon brands fa-facebook-f\"><span class=\"label\">Facebook</span></a></li>\r\n");
      out.write("											<li><a href=\"#\" class=\"icon brands fa-instagram\"><span class=\"label\">Instagram</span></a></li>\r\n");
      out.write("											<li><a href=\"#\" class=\"icon brands fa-pinterest\"><span class=\"label\">Pinterest</span></a></li>\r\n");
      out.write("											<li><a href=\"#\" class=\"icon brands fa-dribbble\"><span class=\"label\">Dribbble</span></a></li>\r\n");
      out.write("											<li><a href=\"#\" class=\"icon brands fa-linkedin-in\"><span class=\"label\">Linkedin</span></a></li>\r\n");
      out.write("										</ul>\r\n");
      out.write("									</section>\r\n");
      out.write("\r\n");
      out.write("								<!-- Copyright -->\r\n");
      out.write("									<div class=\"copyright\">\r\n");
      out.write("										<ul class=\"menu\">\r\n");
      out.write("											<li>&copy; PPLAN. All rights reserved.</li>\r\n");
      out.write("										</ul>\r\n");
      out.write("									</div>\r\n");
      out.write("\r\n");
      out.write("							</div>\r\n");
      out.write("\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<!-- Scripts -->\r\n");
      out.write("			<script src=\"assets/js/jquery.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/jquery.dropotron.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/jquery.scrolly.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/jquery.scrollex.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/browser.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/breakpoints.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/util.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
