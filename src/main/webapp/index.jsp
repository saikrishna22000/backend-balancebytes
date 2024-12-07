<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Sign In</title>
  
  <link rel="stylesheet" href="css/home.css" />
  
  <style>
   body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url("/images/food bg.jpeg"); /* Correct path */
    background-size: cover;
    background-position: center;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
  }

    .loginWindow {
      background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      width: 300px;
      text-align: center;
    }

    .loginHeader {
      font-size: 24px;
      margin-bottom: 20px;
      color: #333;
    }

    .loginContent input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .signinButton {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .signinButton:hover {
      background-color: #45a049;
    }

    .signupLabel {
      color: blue;
      cursor: pointer;
      text-decoration: underline;
    }
    
    .sampleLabel {
      color: blue;
      cursor: pointer;
      text-decoration: underline;
    }

  </style>
</head>
<body>
  <div class="loginWindow">
    <div class="loginHeader">Sign In</div>
    
    <div class="loginContent">
      <div style="display:block;padding-top:20px">Username*</div>
      <input type="text" id="T1" /> 
      
      <div style="display:block;padding-top:20px">Password*</div>
      <input type="password" id="T2" /> 
      
      <div style="display:block;padding-top:10px;padding-bottom:10px;text-align:right">
        <u><label style="color:blue; cursor:pointer;">Forgot Password</label></u>
      </div>
      
      <p id="ack"></p>
      
      <br><br>
      
      <button class="signinButton" onclick="signIn()">Sign In</button>
      
      <br><br>
      
      <div style="text-align: center;">
        <p>Don't have an account?</p>
        <u><a class="signupLabel" onclick="signUp()">Signup</a></u>
        <u><a class="sampleLabel" onclick="sample()">Sample</a></u>
      </div>
    </div>
  </div>

<script type="text/javascript" src="js/main.js"></script>

<script type="text/javascript">
	function signIn(){
		var data = JSON.stringify({
			username: T1.value,
			password: T2.value
		});
		var url = "http://localhost:8080/user/login";
		callApi("POST", url, data, getResponse);
	}
	
	function getResponse(res) {
	    if (res == "Invalid Credentials!!"){
	    	  ack.style.color = "red";
	        ack.innerHTML = "Username and Password do not match!";
	      } else {
	        location.replace("/home");
	      }
	}

	function signUp(){
		location.href = "/signup";
	}

	function sample(){
		location.href = "/sample";
	}
</script>
</body>
</html>
