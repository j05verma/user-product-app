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
        body{
            background: khaki;
        }
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
        a{
            border: 2px solid black;
            margin: auto;
            background-color: aqua;
            color: red;
        }
        </style>
<title>Insert title here</title>
</head>
<body>
	
    <form action="login" method="post">
		
        <input type="tel" name="ph"  class="form-control " placeholder="Enter Your Phone Number"><br>
        
        <input type="password" name="ps"  class="form-control " placeholder="Enter Your Password"><br>
		

		 <center><button class="btn btn-primary">Login</button></center>
		 
          <a href="register.jsp">Click Here to register</a>
        
        
	</form>
</body>
</html>