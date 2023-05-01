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
<style>
        table, th,td{
            border: 2px solid black;
            border-collapse: collapse;
        }
        table{
            margin: 50%;
            margin: auto;
        }
        th{
            padding: 50px;
            background-image: linear-gradient(blue, white, orange);
        }
        td{
            text-align: center;
            padding: 20px;
            background-color: khaki;
            color: red;
        }
    </style>
</head>
<body bgcolor="darkorange">
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
	%>
	<h2 class="table-secondary">
		Welcome Mr/Ms.
		<%=user.getName()%>
	</h2>
	<table class="table table-sm bg-primary ">
        <tr>
            <tr>

				<th scope="col">EditUSer</th>
				<th scope="col">ViewUser</th>
				<th scope="col">DeleteUser</th>
				<th scope="col">LogoutUser</th>
				<th scope="col">Add Product</th>
				<th scope="col">viewProduct</th>
			</tr>
        </tr>
        <tbody>
			<tr>
				<td class="bg-success">
					<h3>
						<a href="editUser.jsp">Edit Your Profile</a>
					</h3>
				</td>
				<td class="bg-warning">
					<h3>
						<a href="viewuser.jsp">View Your Profile</a>
					</h3>
				</td>
				<td class="bg-danger">
					<h3>
						<a href="delete">Delete Your Profile</a>
					</h3>
				</td>
				<td class="table-dark">
					<h3>
						<a href="logout">Logout</a>
					</h3>
				</td>
				<td class="table-dark">
					<h3>
						<a href="addProduct.jsp">Add Product</a>
					</h3>
				</td>
				<td class="table-dark">
					<h3>
						<a href="viewproducts">View Product</a>
					</h3>
				</td>
			</tr>
		</tbody>
    </table>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>