<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="navBar.jsp"></jsp:include> 
<br><br><br><br>

	<form action="LoginServlet" method="post">

		<table cellpadding="6" cellspacing="6" border="1" align="center">

			<tr>
				<td>UserName</td>
			
				<td><input type="text" name="uname"></td>
			</tr>

			<tr>
				<td>Password</td>
		
				<td><input type="password" name="pass"></td>
			</tr>
			
			<tr>
			<td colspan="2" align="center"><input type="submit" value="Login"></td>
			</tr>
		</table>

	</form>

<br><br><br>
<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	

</body>
</html>