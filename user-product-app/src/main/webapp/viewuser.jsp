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
	%>
	<!--  <div class="container">-->

		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<td class="table-primary">Id</td>
					<td class="table-secondary">Name</td>
					<td class="table-dark">Age</td>
					<td class="table-danger">Phone</td>
					<td class="table-warning">Email</td>
					<td class="table-info">Gender</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<!-- <th scope="row">1</th> -->
					<td><%=user.getId()%></td>
					<td><%=user.getName()%></td>
					<td><%=user.getAge()%></td>
					<td><%=user.getPhone()%></td>
					<td><%=user.getEmail()%></td>
					<td><%=user.getGender()%></td>
				</tr>

			</tbody>
		</table>
	<!-- </div> -->

	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>


</body>
</html>