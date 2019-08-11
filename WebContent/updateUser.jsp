<%@page import="com.demoProject.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%User u=(User)session.getAttribute("u"); %>
<form action="RegisterServlet" method="get">
<input type="hidden" name="action" value="update">
<table cellpadding="6" cellspacing="6" border="2" align="center">
<tr><td>Id</td><td><input type="text" name="id" value="<%=u.getId()%>"></tr>
<tr><td>Name</td><td><input type="text" name="name"  value="<%=u.getName()%>"></tr>
<tr><td>Contact</td><td><input type="text" name="contact"  value="<%=u.getContact()%>"></tr>
<tr><td>Email</td><td><input type="text" name="email"  value="<%=u.getEmail()%>"></tr>
<tr><td>Address</td><td><input type="text" name="address"  value="<%=u.getAddress()%>"></tr>
<tr><td>Password</td><td><input type="text" name="pass" value="<%=u.getPassword()%>"></tr>.
<tr><td><input type="submit" value="Save"></td><td><input type="reset" value="Reset"></tr>

</table>
</form>
</body>
</html>
