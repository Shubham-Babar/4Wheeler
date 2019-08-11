<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="navBar.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<form action="CartServlet" method="post">
		<table cellpadding="10" cellspacing="10" align="center" border="5">
			<tr>
				<th>Sr.No.</th>
				<th>ProductName</th>
				<th>Price</th>
				<th>Description.</th>
				<th>Quantity</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="c" items="${cl }">
				<tr>
					<td>${
			c.cartId }</td>
					<td>${c.pname }</td>
					<td>${c.price }</td>
					<input type="hidden" value="${c.price }" name="price">
					<td>${c.pdescription }</td>
					<td><input type="number" value="1" name="qty"></td>
					<td><a href="">Delete</a></td>
				</tr>
			</c:forEach>

			<tr>
				<td colspan="6"><input type="submit" value="PlaceOrder">
				</td>
			</tr>
		</table>
	</form>
	<br>
	<br>
	<br>
	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>