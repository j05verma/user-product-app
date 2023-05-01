<%@page import="org.jsp.userproductapp.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.jsp.userproductapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		List<Product> products = (List<Product>) request.getAttribute("products");
	%>
	<table class="table table-striped table-bordered">
		<thead>
				<tr>
                    <td class="table-active">ID</td>
					<td class="table-primary">Name</td>
					<td class="table-secondary">Description</td>
					<td class="table-dark">Brand</td>
					<td class="table-danger">Category</td>
                    <td class="table-light">Image</td>
					<td class="table-warning">Cost</td>
					<td class="table-success">Edit</td>
                    <td class="table-info">Delete</td>
				</tr>
			</thead>
		<%
		for (Product p : products) {
		%>
		<tbody>
				<tr>					
                        <td><%=p.getId()%></td>
                        <td><%=p.getName()%></td>
                        <td><%=p.getDescription()%></td>
                        <td><%=p.getBrand()%></td>
                        <td><%=p.getCategory()%></td>
                        <td><%=p.getImage()%></td>
                        <td><%=p.getCost()%></td>
                        <td><a href="find?pid=<%=p.getId()%>">Edit</a></td>
                        <td><a href="deleteproduct?pid=<%=p.getId()%>">Delete</a></td>               
				</tr>
			</tbody>
		<%
		}
		%>
	</table>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>