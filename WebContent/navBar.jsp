
<!-- Bootstrap core CSS -->
<link href="resource/css/bootStrapMin.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resource/css/shopHome.css" rel="stylesheet">


<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">4Wheeler.com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="ProductServlet">ProductList</a>
				</li>

				<%
					String userName = (String) session.getAttribute("userName");
					String adminName = (String) session.getAttribute("adminName");
				%>

				<%
					if (userName == null && adminName == null) {
				%>

				<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a>
				</li>

				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>


				<%
					}
				%>

				<%
					if (userName != null && adminName == null) {
				%>


				<li class="nav-item"><a class="nav-link" href="ProductServlet">EditProfile</a>

				</li>

				<li class="nav-item"><a class="nav-link" href="CartServlet">CartList</a></li>

				<%
					}
				%>

				<%
					if (userName == null && adminName != null) {
				%>

				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/RegisterServlet">UserList</a></li>

				<li class="nav-item"><a class="nav-link" href="addProduct.jsp">AddProduct</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="">OrderList</a>
				</li>
				<%
					}
				%>


				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/Contact.jsp">Contact</a></li>

				<%
					if (userName != null || adminName != null) {
				%>

				<li class="nav-item"><a class="nav-link" href="LoginServlet">LogOut</a></li>

				<%
					}
				%>
			</ul>
		</div>
	</div>
</nav>
