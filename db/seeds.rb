foods = {
    "Peas": {
      calories: 100,
      created_at: DateTime.parse("2015-07-01")
    },
    "Pancakes": {
      calories: 200,
      created_at: DateTime.parse("2015-07-01")
    },
    "Banana": {
      calories: 150,
      created_at: DateTime.parse("2015-07-02")
    },
    "Avocado Sandwich": {
      calories: 450,
      created_at: DateTime.parse("2015-07-03")
    },
    "Oatmeal": {
      calories: 250,
      created_at: DateTime.parse("2015-07-04")
    },
    "French Fries": {
      calories: 450,
      created_at: DateTime.parse("2015-07-05")
    },
    "Tiger Shrimp": {
      calories: 450,
      created_at: DateTime.parse("2015-07-06")
    },
    "Doritos": {
      calories: 100,
      created_at: DateTime.parse("2015-07-07")
    },
    "Stick of Gum": {
      calories: 10,
      created_at: DateTime.parse("2015-07-08")
    },
    "Taco Salad": {
      calories: 600,
      created_at: DateTime.parse("2015-07-09")
    },
    "Chipotle Burrito": {
      calories: 1000,
      created_at: DateTime.parse("2015-07-10")
    },
    "Widmer Beer": {
      calories: 150,
      created_at: DateTime.parse("2015-07-11")
    },
    "Red Wine": {
      calories: 175,
      created_at: DateTime.parse("2015-07-12")
    },
    "Nachos": {
      calories: 450,
      created_at: DateTime.parse("2015-07-13")
    },
    "Celery": {
      calories: 50,
      created_at: DateTime.parse("2015-07-14")
    },
    "Green Apple": {
      calories: 100,
      created_at: DateTime.parse("2015-07-15")
    },
    "Spinach": {
      calories: 80,
      created_at: DateTime.parse("2015-07-16")
    },
    "Rice": {
      calories: 175,
      created_at: DateTime.parse("2015-07-17")
    },
    "Martini": {
      calories: 140,
      created_at: DateTime.parse("2015-07-18")
    },
    "Ice Cream": {
      calories: 250,
      created_at: DateTime.parse("2015-07-19")
    },
    "Veggie Stir Fry": {
      calories: 350,
      created_at: DateTime.parse("2015-07-20")
    },
    "Tofu": {
      calories: 250,
      created_at: DateTime.parse("2015-07-21")
    },
    "Heirloom Tomatoes": {
      calories: 100,
      created_at: DateTime.parse("2015-07-22")
    },
    "Dinner Roll": {
      calories: 100,
      created_at: DateTime.parse("2015-07-23")
    },
    "Mashed Potatoes": {
      calories: 350,
      created_at: DateTime.parse("2015-07-24")
    },
    "Coconut Pie": {
      calories: 50,
      created_at: DateTime.parse("2015-07-25")
    },
    "Denny's Dinner": {
      calories: 1200,
      created_at: DateTime.parse("2015-07-26")
    },
    "Quasadilla": {
      calories: 700,
      created_at: DateTime.parse("2015-07-27")
    },
    "Grilled Salmon": {
      calories: 800,
      created_at: DateTime.parse("2015-07-28")
    },
    "Whiskey": {
      calories: 200,
      created_at: DateTime.parse("2015-07-29")
    },
    "Black Beans": {
      calories: 100,
      created_at: DateTime.parse("2015-07-30")
    }
}



# Iterate through foods hash, seeding database
foods.each do |key, hash|
  Food.create(name: key, calories: hash[:calories], created_at: hash[:created_at])
end
