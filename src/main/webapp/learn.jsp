<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Learn About Nutrition</title>

<style>
  body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9fbe7;
  }
  .header {
    background-color: #8bc34a;
    color: white;
    padding: 15px;
    text-align: center;
  }
  .content {
    padding: 20px;
    max-width: 1200px;
    margin: 0 auto;
  }
  h2 {
    color: #558b2f;
    margin-bottom: 10px;
  }
  .card {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
  }
  .card-item {
    flex: 1 1 calc(33.333% - 20px);
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    transition: transform 0.3s ease;
    text-align: center;
  }
  .card-item:hover {
    transform: translateY(-10px);
  }
  .card-item img {
    width: 100%;
    height: 150px;
    object-fit: cover;
  }
  .card-item h3 {
    margin: 15px 0;
    font-size: 18px;
    color: #33691e;
  }
  .card-item p {
    padding: 0 15px;
    color: #757575;
    font-size: 14px;
  }
  .card-item a {
    display: inline-block;
    margin: 15px 0;
    text-decoration: none;
    background-color: #558b2f;
    color: white;
    padding: 8px 12px;
    border-radius: 4px;
    font-size: 14px;
    transition: background-color 0.3s ease;
  }
  .card-item a:hover {
    background-color: #33691e;
  }
  @media screen and (max-width: 768px) {
    .card-item {
      flex: 1 1 calc(50% - 20px);
    }
  }
  @media screen and (max-width: 480px) {
    .card-item {
      flex: 1 1 100%;
    }
  }
</style>
</head>
<body>

<div class="header">
  <h1>Learn About Nutrition</h1>
</div>

<div class="content">
  <h2>Interactive Nutrition Lessons</h2>
  <p>Discover the essential nutrients your body needs, how to plan balanced meals, and tips for maintaining a healthy diet.</p>

  <div class="card">
    <div class="card-item">
      <img src="images/nutrition-basics.jpg" alt="Nutrition Basics">
      <h3>Nutrition Basics</h3>
      <p>Learn about proteins, carbs, fats, vitamins, and minerals for a balanced diet.</p>
      <a href="#">Start Learning</a>
    </div>
    <div class="card-item">
      <img src="images/meal-planning.jpg" alt="Meal Planning">
      <h3>Meal Planning</h3>
      <p>Discover how to create a personalized meal plan for your health goals.</p>
      <a href="#">Explore More</a>
    </div>
    <div class="card-item">
      <img src="images/healthy-snacks.jpg" alt="Healthy Snacks">
      <h3>Healthy Snacks</h3>
      <p>Find fun and nutritious snack ideas for busy days.</p>
      <a href="#">View Recipes</a>
    </div>
    <div class="card-item">
      <img src="images/child-nutrition.jpg" alt="Child Nutrition">
      <h3>Child Nutrition</h3>
      <p>Understand the nutritional needs of children and how to encourage healthy eating.</p>
      <a href="#">Learn More</a>
    </div>
    <div class="card-item">
      <img src="images/teens-nutrition.jpg" alt="Teens' Nutrition">
      <h3>Teens' Nutrition</h3>
      <p>Support adolescents in building healthy dietary habits for life.</p>
      <a href="#">Start Now</a>
    </div>
    <div class="card-item">
      <img src="images/exercise.jpg" alt="Diet and Exercise">
      <h3>Diet and Exercise</h3>
      <p>Learn how to pair your diet with effective exercise for optimal results.</p>
      <a href="#">Begin Today</a>
    </div>
  </div>
</div>

</body>
</html>
