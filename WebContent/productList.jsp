<%@page import="java.util.List"%>
<%@page import="com.demoProject.pojo.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
</head>
<body>

	<jsp:include page="navBar.jsp"></jsp:include>
	<br>	<br>	<br>	<br>

<%List<Product> pl=(List<Product>)session.getAttribute("pl"); %>

<table cellpadding="6" cellspacing="6" align="center" border="1">

<tr><th>Product Id</th><th>Name</th><th>Description</th><th>Price</th><th>Category</th></tr>
<%for(Product p:pl){ %>
<tr>
<td><%=p.getPid() %></td>
<td><%=p.getPname() %></td>
<td><%=p.getPdescription() %></td>
<td><%=p.getPrice() %></td>
<td><%=p.getCategory() %></td>
</tr>
<%} %>


</table>

<br><br><br>
<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>