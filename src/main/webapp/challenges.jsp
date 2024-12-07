<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fun Challenges - Diet Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e8f5e9;
        }
        .header {
            background-color: #4caf50;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .content {
            margin: 20px auto;
            width: 80%;
            max-width: 800px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h2 {
            color: #4caf50;
            text-align: center;
        }
        .challenge {
            margin: 15px 0;
            padding: 15px;
            background-color: #c8e6c9;
            border-radius: 8px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        }
        .challenge h3 {
            margin: 0 0 10px 0;
            color: #2e7d32;
        }
        .challenge button {
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
        }
        .challenge button:hover {
            background-color: #388e3c;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Fun Challenges</h1>
</div>

<div class="content">
    <h2>Take a Challenge Today!</h2>
    <div class="challenge">
        <h3>Drink 8 Glasses of Water</h3>
        <p>Keep yourself hydrated throughout the day. Log every glass of water you drink!</p>
        <button onclick="location.href='joinChallenge?challengeId=1'">Join Challenge</button>
    </div>
    <div class="challenge">
        <h3>Eat 5 Servings of Vegetables</h3>
        <p>Add more greens to your meals today and enjoy the health benefits!</p>
        <button onclick="location.href='joinChallenge?challengeId=2'">Join Challenge</button>
    </div>
    <div class="challenge">
        <h3>10,000 Steps Challenge</h3>
        <p>Get moving! Walk or run and track your steps throughout the day.</p>
        <button onclick="location.href='joinChallenge?challengeId=3'">Join Challenge</button>
    </div>
    <div class="challenge">
        <h3>No Junk Food Day</h3>
        <p>Say no to junk food today and focus on healthy meals instead.</p>
        <button onclick="location.href='joinChallenge?challengeId=4'">Join Challenge</button>
    </div>
</div>

</body>
</html>
