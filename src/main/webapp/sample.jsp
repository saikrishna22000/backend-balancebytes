<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BalanceBytes: Gamified Nutrition App</title>

<style>
  body {
    font-family: 'Comic Sans MS', cursive, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #e0f7fa;
  }
  .header {
    background-color: #ff9800;
    color: white;
    padding: 15px;
    text-align: center;
  }
  .sidebar {
    width: 220px;
    background-color: #673ab7;
    position: fixed;
    height: 100%;
    top: 0;
    left: 0;
    padding-top: 20px;
  }
  .sidebar a {
    padding: 12px 15px;
    text-decoration: none;
    color: white;
    display: block;
    transition: background-color 0.3s;
  }
  .sidebar a:hover {
    background-color: #5e35b1;
  }
  .content {
    margin-left: 240px;
    padding: 20px;
  }
  h2 {
    color: #ff5722;
  }
  ul {
    list-style-type: none;
    padding: 0;
  }
  li {
    margin: 10px 0;
  }
  li a {
    color: #673ab7;
    text-decoration: underline;
  }
</style>
</head>
<body>

<div class="header">
  <h1>BalanceBytes: Gamified Nutrition App</h1>
</div>

<div class="sidebar">
  <a href="#">Home</a>
  <a href="learn.jsp">Learn About Nutrition</a>
  <a href="#">Fun Challenges</a>
  <a href="track.jsp">Track Your Meals</a>
  <a href="#">My Profile</a>
  <a href="#">Settings</a>
  <a href="#">Logout</a>
</div>

<div class="content">
  <h2>Welcome to BalanceBytes!</h2>
  <p>Your fun and interactive way to learn about healthy eating and nutrition. Let's make eating healthy exciting!</p>

  <h3>Quick Actions</h3>
  <ul>
    <li><a href="#">Explore Fun Nutrition Games</a></li>
    <li><a href="#">Track Your Daily Meals</a></li>
    <li><a href="#">Participate in Challenges</a></li>
    <li><a href="#">Update Your Profile</a></li>
  </ul>
</div>

</body>
</html>
