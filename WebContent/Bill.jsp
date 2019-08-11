<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill Amount</title>
</head>
<body >
<jsp:include page="navBar.jsp"></jsp:include>
<br><br><br><br>
	<table cellpadding="10" cellspacing="10" border="6" align="center">
		<tr>
			<td colspan="2">
				<h1>Your Order Placed Successfully</h1>
			</td>
		</tr>
		<tr>
			<td>
				<h4>Name</h4>
			</td>
			<td>
				<h4>${u.name}</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h4>Mobile No</h4>
			</td>

			<td>
				<h4>${u.contact}</h4>
			</td>
		</tr>
		<tr>
			<td><h4>Email Id</h4></td>

			<td><h4>${u.email}</h4></td>
		</tr>
		<tr>
			<td><h4>Address</h4></td>
			<td><h4>${u.address}</h4></td>
		</tr>
		<tr>
			<td><h2>TotalBill</h2></td>
			<td><h2>${totalPrice}</h2></td>
		</tr>

	</table>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>