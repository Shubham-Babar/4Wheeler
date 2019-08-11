<!DOCTYPE html>
<%@page import="com.demoProject.dao.ProductDaoImpl"%>
<%@page import="com.demoProject.pojo.Product"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>* 4Wheeler.com*</title>

<!-- Bootstrap core CSS -->
<link href="resource/css/bootStrapMin.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resource/css/shopHome.css" rel="stylesheet">

</head>

<body>
	<%
		ProductDaoImpl ud = new ProductDaoImpl();
	%>
	<!-- Navigation -->
	<jsp:include page="navBar.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<!-- sideBar Page -->
			<jsp:include page="sideBar.jsp"></jsp:include>

			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<!-- Slider Page -->
				<jsp:include page="sliderPage.jsp"></jsp:include>
				<div class="row">
					<%
						List<Product> pl = null;
						String category = (String) session.getAttribute("category");

						if (category != null) {
							pl = (List<Product>) session.getAttribute("pl");

						} else {

							pl = ud.getAllProduct();
						}
					%>

					<%
						for (Product p : pl) {
					%>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top card_img--fix-height"
								src="resource/images/<%=p.getPname()%>.jpg" alt=""/></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#"><%=p.getPname()%></a>
								</h4>
								<h5><%=p.getPrice()%></h5>
								<c:if test="${userName!=null }">
									<h5>
										<a href="CartServlet?action=addToCart&pid=<%=p.getPid()%>">addToCart</a>
									</h5>
								</c:if>
								<p class="card-text">
									<%=p.getPdescription()%>
								</p>
							</div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>

					<%
						}
					%>

				</div>
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
	
	
	<!-- Bootstrap core JavaScript -->
	<script src="resource/js/jquery_min.js"></script>
	<script src="resource/js/bootStrapBundle.js"></script>

</body>

</html>