<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>
	<jsp:include page="navBar.jsp"></jsp:include>

	<br>
	<br>
	<br>
	<br>
	<form action="RegisterServlet" method="post">
		<table cellpadding="10" cellspacing="10" border="2" align="center">
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"></td>

			</tr>

			<tr>
				<td>Contact</td>
				<td><input type="text" name="contact"></td>

			</tr>

			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>

			</tr>

			<tr>
				<td>Address</td>
				<td><input type="text" name="address"></td>

			</tr>

			<tr>
				<td>Password</td>
				<td><input type="password" name="pass"></td>

			</tr>

			<tr>

				<td><input type="submit" value="Save"></td>

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