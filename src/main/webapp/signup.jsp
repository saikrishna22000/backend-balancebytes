<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup Page</title>
    <link rel="stylesheet" href="css/signup.css">
</head>
<body>

    <div class="loginWindow">
        <div class="loginHeader">Sign Up</div>
        <div class="loginContent">

            <form id="signupForm" onsubmit="event.preventDefault(); signup();">
                
                <div style="display: block; padding-top: 20px;">First Name*</div>
                <input type="text" name="firstName" id="firstName" required />

                <div style="display: block; padding-top: 20px;">Last Name*</div>
                <input type="text" name="lastName" id="lastName" required />

                <div style="display: block; padding-top: 20px;">Contact*</div>
                <input type="tel" name="contact" id="contact" required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" />

                <div style="display: block; padding-top: 20px;">Email*</div>
                <input type="email" name="email" id="email" required />

                <div style="display: block; padding-top: 20px;">Username*</div>
                <input type="text" name="username" id="username" required />

                <div style="display: block; padding-top: 20px;">Password*</div>
                <input type="password" name="password" id="password" required />

                <!-- Acknowledgment div for displaying messages -->
                <div id="ack" class="ack" style="color: red; padding-top: 10px;"></div>

                <div style="padding-top: 20px;">
                    <button type="submit" class="signinButton">Sign Up</button>
                </div>
            </form>

        </div>
    </div>

</body>

<script src="js/main.js"></script>

<script>
    function signup() {
        var data = JSON.stringify({
            username: document.getElementById('username').value,
            password: document.getElementById('password').value,
            firstName: document.getElementById('firstName').value,
            lastName: document.getElementById('lastName').value,
            contact: document.getElementById('contact').value,
            email: document.getElementById('email').value
        });

        var url = "http://localhost:8080/user/save";
        callApi("POST", url, data, getResponse);
    }

    function getResponse(res) {
        var ack = document.getElementById('ack');
        if (res == "uae") {
            ack.innerHTML = "Username already exists! Try another one.";
        } else if (res == "eae") {
            ack.innerHTML = "Email already exists! Use another one.";
        } else if (res == "us") {
            alert("New user saved!");
            location.replace("/");
        } else {
            ack.innerHTML = "Something went wrong with the page!";
        }
    }
</script>
</html>
