<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile - Diet Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9fbe7;
        }
        .header {
            background-color: #4caf50;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .content {
            margin: 20px auto;
            width: 60%;
            max-width: 600px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h2 {
            color: #4caf50;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>My Profile</h1>
</div>

<div class="content">
    <h2>Profile Details</h2>
    <form action="updateProfile" method="POST">
        <!-- Display User Details (Assume these values are populated dynamically) -->
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" value="<%= request.getAttribute("firstName") %>" required />
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" value="<%= request.getAttribute("lastName") %>" required />
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= request.getAttribute("email") %>" required />
        </div>
        <div class="form-group">
            <label for="contact">Contact</label>
            <input type="tel" id="contact" name="contact" value="<%= request.getAttribute("contact") %>" required pattern="[0-9]{10}" />
        </div>
        <button type="submit">Update Profile</button>
    </form>
</div>

</body>
</html>
