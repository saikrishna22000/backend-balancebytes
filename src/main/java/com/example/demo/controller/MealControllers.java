package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class MealControllers {

    @GetMapping("/meals/getCalories")
    public Map<String, Object> getCalories(@RequestParam String foodName, @RequestParam String mealType) {
        Map<String, Object> response = new HashMap<>();

        // Expanded database of food items including South Indian foods and their calories
        Map<String, Integer> foodCalories = new HashMap<>();
        
        // Common foods
        foodCalories.put("Salad", 150);
        foodCalories.put("Chicken", 200);
        foodCalories.put("Banana", 90);
        foodCalories.put("Oatmeal", 130);
        foodCalories.put("Rice", 250);
        foodCalories.put("Chapati", 80);
        foodCalories.put("Egg", 70);
        foodCalories.put("Milk", 120);
        foodCalories.put("Paneer", 260);
        foodCalories.put("Apple", 95);
        foodCalories.put("Orange", 62);
        foodCalories.put("Soup", 150);
        foodCalories.put("Smoothie", 200);
        foodCalories.put("Sandwich", 300);

        // South Indian foods
        foodCalories.put("Idli", 50); // Per piece
        foodCalories.put("Dosa", 70); // Plain dosa
        foodCalories.put("Masala Dosa", 150); // With potato filling
        foodCalories.put("Vada", 120); // Per piece
        foodCalories.put("Upma", 180);
        foodCalories.put("Pongal", 200); // Ven Pongal
        foodCalories.put("Sambar", 100); // One bowl
        foodCalories.put("Rasam", 40);  // One bowl
        foodCalories.put("Curd Rice", 150);
        foodCalories.put("Puliyodarai", 250); // Tamarind rice
        foodCalories.put("Biryani", 450); // South Indian style
        foodCalories.put("Chicken 65", 250); // Small portion
        foodCalories.put("Fish Curry", 240);
        foodCalories.put("Avial", 110); // Vegetable curry
        foodCalories.put("Appam", 90);  // Per piece	
        foodCalories.put("Puttu", 200); // With coconut
        foodCalories.put("Neer Dosa", 60); // Per dosa
        foodCalories.put("Payasam", 300); // One bowl

        // Snacks and sweets
        foodCalories.put("Murukku", 150); // Per piece
        foodCalories.put("Mysore Pak", 250); // Per piece
        foodCalories.put("Laddu", 180); // Per piece
        foodCalories.put("Halwa", 200); // Small portion

        // Get calorie value or default to 0
        Integer calories = foodCalories.getOrDefault(foodName, 0);
        response.put("calories", calories);

        return response;
    }
}
