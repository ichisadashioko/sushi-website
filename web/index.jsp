<%@page import="Controllers.*"%>
<%@page import="Models.*"%>
<%@page import="Views.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	ServletContext context = getServletContext();
	IndexView pageView = IndexController.getPageContent(context, request);
	List<Banner> bList = pageView.getbList();
	List<Integer> pageCounterItems = pageView.getPageCounterItems();
	int pageNum = pageView.getPageNum();
	int numPages = pageView.getNumPages();
%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<title>Awesome Sushi Palace</title>
		<link rel="stylesheet" href="css/_index.css">
		<script src="js/select.js"></script>
	</head>

	<body>
		<div class="site-wrapper">
			<!-- this is the Header content -->
			<div class=" header-wrapper" id="header">
				<!-- this is the header wrapper -->
				<div class="container">
					<!-- these are the titles -->
					<div class="title-wrapper">
						<div class="title-wrapper-inner">
							<div class="title">
								<a href="index.jsp" class="title title-link">The Sushi Palace Restaurant</a>
							</div>
							<div class="subtitle">Welcome to this website</div>
						</div>
					</div>
				</div>
				<!-- this is the menu content -->
				<div class="navbar">
					<a class="active">Awesome Sushi Palace</a>
					<a href="menu.jsp">Menu and Price list</a>
					<a href="contact.jsp">Call Now</a>
				</div>
			</div>
			<div class="content-wrapper" id="content">
				<div class="container">
					<div id="left" class="span9">
						<div class="wrapper">
							<div class="content">
								<div class="row-fluid layout5-row margins-topbottom padding-all">
									<div class="sections-wrapper">
										<div class="span12">
											<div class="section article margins-on">
												<div class="heading wordwrapfix">
													<h3>Welcome to Awesome Sushi Palace,</h3>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row-fluid layout5-row margins-topbottom padding-all">
									<div class="sections-wrapper">
										<div class="span12">
											<div class="section article margins-on">
												<div class="heading wordwrapfix">
													<h3>Awesome Sushi Palace</h3>
												</div>
												<div class="content">
													<p><span>Awesome Sushi Palace Order here 512-796-1676</span></p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row-fluid layout5-row margins-topbottom padding-all">
									<div class="sections-wrapper">
										<div class="span12">
											<div class="section article margins-on">
												<div class="content">
													<div class="img-simple span12">
														<div class="image"><img src="images/sushi_01.jpg"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<%
									for (int i = 0; i < bList.size(); i++) {
										Banner b = bList.get(i);
								%>
								<div class="row-fluid layout5-row margins-topbottom padding-all">
									<div class="sections-wrapper">
										<div class="span12">
											<div class="section article margins-on">
												<div class="heading wordwrapfix">
													<h3><%=b.getTitle()%></h3>
												</div>
												<div class="content">
													<div class="img-simple span6 pull-left">
														<div class="image"><img src="<%=b.getImg()%>"></div>
													</div>
													<%
														String[] lines = b.getDesc().split("\n");
														for (String line : lines) {
													%>
													<p><span><%=line%></span></p>
													<%}%>
												</div>
											</div>
										</div>
									</div>
								</div>
								<%}%>

								<div class="page-container">Page <select id="page-control"><%for (int i = 1; i <= numPages; i++) {if (i == pageNum) {%><option value="<%=i%>" selected><%=i%></option><%} else {%><option value="<%=i%>"><%=i%></option><%}}%></select> of <%=numPages%></div>
							</div>
						</div>
					</div>
					<div id="right" class="span3">
						<div class="sidebar">
							<div class="wrapper share-box">
								<div class="heading wordwrapfix">
									<h4>Share this page</h4>
								</div>
								<div class="content">
									<ul>
										<li><a><i class="icon-facebook-sign"></i><span>Share on Facebook</span></a></li>
										<li><a><i class="icon-twitter-sign"></i><span>Share on Twitter</span></a></li>
										<li><a><i class="icon-google-plus"></i><span>Share on Google</span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- this is the Footer content -->
			<div class=" footer-wrapper" id="footer">
				<!-- this is the footer wrapper -->
				<div class="container">
					<div class="footer-info">
						<div class="footer-info-text">
							Made with &hearts;
						</div>
					</div>
					<div class="footer-page-counter">
						<%for (int i = 0; i < pageCounterItems.size(); i++) {%><span class="footer-page-counter-item"><%=pageCounterItems.get(i)%></span><%}%>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>