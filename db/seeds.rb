foods = {
    "Peas": 100,
    "Banana": 150,
    "Avocado Sandwich": 450,
    "Oatmeal": 250,
    "French Fries": 450,
    "Tiger Shrimp": 450,
    "Doritos": 100,
    "Stick of Gum": 10,
    "Taco Salad": 600,
    "Chipotle Burrito": 1000,
    "Widmer Beer": 150,
    "Red Wine": 175,
    "Nachos": 450,
    "Celery": 50,
    "Green Apple": 100,
    "Spinach": 80,
    "Rice": 175,
    "Martini": 140,
    "Ice Cream": 250,
    "Veggie Stir Fry": 350,
    "Tofu": 250,
    "Heirloom Tomatoes": 100,
    "Dinner Roll": 100,
    "Mashed Potatoes": 350,
    "Coconut Pie": 550,
    "Denny's Dinner": 1200,
    "Quasadilla": 700,
    "Grilled Salmon": 800,
    "Whiskey": 200,
    "Black Beans": 100,
    "Cliff Bar": 150
}

# Iterate through foods hash, seeding database
foods.each do |key, value|
  Food.create(name: key, calories: value)
end
