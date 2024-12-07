<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Meal Calorie Tracker</title>
  
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
      max-width: 600px;
      background: white;
      border-radius: 8px;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      padding: 20px;
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
      padding: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      width: 100%;
    }
    button:hover {
      background-color: #45a049;
    }
    .result {
      margin-top: 20px;
      padding: 10px;
      background-color: #e8f5e9;
      border-radius: 5px;
    }
  </style>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
    $(document).ready(function () {
      $('#foodName').on('blur', function () {
        const foodName = $('#foodName').val();
        const mealType = $('#mealType').val();

        if (foodName && mealType) {
          $.ajax({
            url: '/meals/getCalories',
            type: 'GET',
            data: { foodName: foodName, mealType: mealType },
            success: function (data) {
              $('#calorieResult').html('Calories in ' + foodName + ': ' + data.calories + ' kcal');
            },
            error: function () {
              $('#calorieResult').html('Error fetching calorie information. Please try again.');
            }
          });
        }
      });
    });
  </script>
</head>
<body>

<div class="header">
  <h1>Meal Calorie Tracker</h1>
</div>

<div class="content">
  <div class="form-group">
    <label for="mealType">Meal Type:</label>
    <select id="mealType" name="mealType">
      <option value="Breakfast">Breakfast</option>
      <option value="Lunch">Lunch</option>
      <option value="Dinner">Dinner</option>
      <option value="Snack">Snack</option>
    </select>
  </div>
  <div class="form-group">
    <label for="foodName">Food Name:</label>
    <input type="text" id="foodName" name="foodName" placeholder="e.g., Salad, Chicken, Banana">
  </div>
  
  <div id="calorieResult" class="result">
    <!-- Calorie result will appear here -->
  </div>
</div>

</body>
</html>
