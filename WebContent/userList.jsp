<%@page import="com.demoProject.pojo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User list</title>
</head>
<body>

	<jsp:include page="navBar.jsp"></jsp:include>
	<br>
	<br>
	<%
		List<User> al = (List<User>) session.getAttribute("al");
	%>

	<table cellpadding="6" cellspacing="6" align="center" border="1">
		<tr>
			<th>UserId</th>
			<th>Name</th>
			<th>Contact</th>
			<th>Email</th>
			<th>Address</th>
			<th>Password</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
			for (User u : al) {
		%>
		<tr>
			<td><%=u.getId()%></td>
			<td><%=u.getName()%></td>
			<td><%=u.getContact()%></td>
			<td><%=u.getEmail()%></td>
			<td><%=u.getAddress()%></td>
			<td><%=u.getPassword()%></td>
			<td><a href="RegisterServlet?action=edit&id=<%=u.getId()%>">Edit</a></td>
			<td><a href="RegisterServlet?action=delete&id=<%=u.getId()%>">Delete</a></td>
		</tr>

		<%
			}
		%>
	</table>


	<br>
	<br>
	<br>
	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>