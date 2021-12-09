<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.divCenter {
  margin: auto;
  width: 60%;
 
  padding: 10px;
}

h1 {text-align: center;}

</style>
</head>
<body >

<div class="divCenter">   
<h1>Email OTP Verification </h1>
<form action="oneTimePassword" method="post">  
Email Address:<input type="text" placeholder="Enter your email ID" name="email" required/><br/><br/> 
<input type="submit" class="btn btn-success" value="login"/>
</form>  
</div></center>
</body>
</html>