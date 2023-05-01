<%@page import="org.jsp.userproductapp.dto.Product"%>
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
    <style>
        form{
            border: 2px solid black;
            padding: 50px;
            width: 50%;
            margin: auto;
            background-image: linear-gradient(khaki, hotpink, darkorange);
        }
        input{
            float: right;
            
        }
    </style>
<title>Insert title here</title>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
		Product p=(Product)request.getAttribute("product");
	%>
	<form action="editproduct" method="post">
		<input type="hidden" value="<%=p.getId()%>" name="id"> 
		
		Name<input type="text" name="nm"  class="form-control " value="<%=p.getName()%>"><br>

		Description<input type="text" name="desc"  class="form-control " value="<%=p.getDescription()%>"><br> 
		
		Brand<input	type="text" name="br"  class="form-control " value="<%=p.getBrand()%>"><br>

		category<input type="text" name="cat"  class="form-control " value="<%=p.getCategory()%>"><br>

		Image<input type="text" name='im'  class="form-control " value="<%=p.getImage()%>"><br>

		Cost<input type="text" name="cost"  class="form-control " value="<%=p.getCost()%>"><br>

		 <center><button class="btn btn-primary">Update</button></center>
	</form>	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>