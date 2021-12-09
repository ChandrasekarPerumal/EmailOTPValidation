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
.bodyCenter {
  margin: auto;
  width: 60%;
 
  padding: 10px;
}

h1 {text-align: center;}
</style>

</head>
<script>
function verifyOTP() {
	debugger
  if(${otp} == document.getElementById("userOTP").value){
	  //alert("Successfull validation");
	  window.location="success.jsp";
  }else{
	  alert("Incorrect OTP");
  }
	
}


var timelimit=2*60;



var d=setInterval(function(){
	if(timelimit==0){
		clearInterval(d);
		window.location="home.jsp";
		
	}else
		{

		document.getElementById("timerdisplay").innerHTML="Time left: "+timelimit+" seconds remaining";
		}
	timelimit-=1;
},1000);

</script>
<body class=bodyCenter> 
	
	<h1> OTP Validation</h1>
	
	<div id="timerdisplay">
	<br>
	<br>
	</div>

	<label>Enter OTP: </label> <input type="text" placeholder=" One Time Password " id="userOTP" required/>
<br/><br/> 
<button class="btn btn-primary" onclick="verifyOTP()">verify</button>

</body>
</html>