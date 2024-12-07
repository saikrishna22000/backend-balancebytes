<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Track Your Meals - BalanceBytes</title>
  
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f1f8e9;
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
    form {
      margin-top: 20px;
    }
    .form-group {
      margin-bottom: 15px;
    }
    label {
      font-weight: bold;
      display: block;
      margin-bottom: 5px;
    }
    input[type="text"], select {
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
    .meal-list {
      margin-top: 30px;
    }
    .meal-item {
      background-color: #e8f5e9;
      padding: 10px;
      border-radius: 5px;
      margin-bottom: 10px;
      display: flex;
      justify-content: space-between;
    }
  </style>
</head>
<body>

<div class="header">
  <h1>Track Your Meals</h1>
</div>

<div class="content">
  <h2>Add Your Meal</h2>
  <form action="saveMeal" method="POST">
    <div class="form-group">
      <label for="mealType">Meal Type</label>
      <select id="mealType" name="mealType">
        <option value="Breakfast">Breakfast</option>
        <option value="Lunch">Lunch</option>
        <option value="Dinner">Dinner</option>
        <option value="Snack">Snack</option>
      </select>
    </div>
    <div class="form-group">
      <label for="foodName">Food Name</label>
      <input type="text" id="foodName" name="foodName" placeholder="e.g., Salad, Chicken, Banana" required>
    </div>
    <div class="form-group">
      <label for="calories">Calories</label>
      <input type="text" id="calories" name="calories" placeholder="e.g., 250" required>
    </div>
    <button type="submit">Add Meal</button>
  </form>

  <div class="meal-list">
    <h3>Today's Meals</h3>
    <!-- Example items - these would be dynamically generated -->
    <div class="meal-item">
      <span>Breakfast: Oatmeal - 150 calories</span>
      <span><a href="deleteMeal?id=1" style="color: red; text-decoration: none;">Delete</a></span>
    </div>
    <div class="meal-item">
      <span>Lunch: Grilled Chicken - 400 calories</span>
      <span><a href="deleteMeal?id=2" style="color: red; text-decoration: none;">Delete</a></span>
    </div>
  </div>
</div>

</body>
</html>
