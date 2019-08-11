<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>
<jsp:include page="navBar.jsp"></jsp:include>
<br> <br> 

	<form action="ProductServlet" method="post">
		<table cellpadding="10" cellspacing="10" border="2" align="center">

			<tr>
				<td>Product Name</td>
				<td><input type="text" name="pname"></td>

			</tr>

			<tr>
				<td>Product Description</td>
				<td><input type="text" name="pdescription"></td>

			</tr>

			<tr>
				<td>Product Price</td>
				<td><input type="text" name="price"></td>

			</tr>

			<tr>
				<td>Product Category</td>
				<td><select name="category">
						<option value="Maruti">Maruti</option>
						<option value="BMW">BMW</option>
						<option value="Audi">Audi</option>
				</select></td>

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