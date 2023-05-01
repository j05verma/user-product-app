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
        form{
            border: 2px solid black;
            padding: 50px;
            width: 50%;
            margin: auto;
           background-image: linear-gradient(rgb(216, 216, 75), rgb(206, 123, 164), rgb(133, 128, 122));
        }
        input{
            float: right;
            
        }
    </style>
</head>
<body bgcolor="khaki">
	
	
	<form action=reg method="post">
	 
        
	
        <label for="">NAME:</label>
        <input type="text" name="nm" class="form-control">
        <br>

        <label for="">Age:</label>
        <input type="number" name="age" class="form-control">
        <br>
       
        <div class="form-group">
                <label for="">GENDER:</label>
                <select class="form-control" name="gender" type="radio">
                  <option>MALE</option>
                  <option>FEMALE</option>
                  
                </select>
              </div>
        
        <label for="">phone:</label>
        <input type="tel" name="ph" class="form-control">
       <br>
       
        <label for="">EMAIL:</label>
        <input type="email" name="em" class="form-control">
        <br>
        
        <label for="">Password:</label>
        <input type="password" name="ps" class="form-control">
       
        <br><br>
        <center><button class="btn btn-primary">Register</button></center>
    </form>
</body>
</html>