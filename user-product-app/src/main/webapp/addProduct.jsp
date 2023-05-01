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
           background-image: linear-gradient(rgb(228, 221, 156), rgb(233, 154, 57), rgb(146, 136, 141));
        }
        input{
            float: right;
            
        }
    </style>

<title>Insert title here</title>
</head>
<body>
	<form action="addProduct" method="post">
	 
        
	
        <label for="">NAME:</label>
        <input type="text" name="nm" class="form-control">
        <br>

        <label for="">Description:</label>
        <input type="text" name="desc" class="form-control">
        <br>
        
        <label for="">Brand:</label>
        <input type="text" name="br" class="form-control">
        <br>
        
        
        <label for="">Category:</label>
        <input type="text" name="cat" class="form-control">
       <br>
       
        <label for="">Image:</label>
        <input type="text" name="im" class="form-control">
        <br>
        
        <label for="">Cost:</label>
        <input type="number" name="cost" class="form-control">
       
        <br><br>
        <center><button class="btn btn-primary">Add</button></center>
    </form>
</body>
</html>