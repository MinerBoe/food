require "./food"
require "./meal"
require "./day"
require "./month"
require "./exercise"
require "./activity"

scrambled_eggs = Food.new("Scrambled Eggs", "1 egg", 100)
bacon = Food.new("Bacon", "3 slices", 100)

workout = Activity.new("Workout")
workout.add_exercise(Exercise.new("Jogging", 300), 30)
workout.add_exercise(Exercise.new("Yoga", 240), 20)
workout.add_exercise(Exercise.new("Weightlifting", 266), 45)

breakfast = Meal.new("Breakfast")
breakfast.add_food(scrambled_eggs, 3)
breakfast.add_food(bacon, 2)
breakfast.add_food(Food.new("Cereal", "1 oz", 135), 2)
breakfast.add_food(Food.new("Milk", "1 cup", 125), 1)
breakfast.add_food(Food.new("Orange Juice", "1 cup", 110), 1)

lunch = Meal.new("Lunch")
lunch.add_food(Food.new("Roast Beef Sandwich", "1 sandwich", 345), 1)
lunch.add_food(Food.new("Salad", "1 cup", 11), 2)
lunch.add_food(Food.new("Salad Dressing", "1 tbsp", 145), 3)
lunch.add_food(Food.new("Chicken Noodle Soup", "1 cup", 75), 1.5)
lunch.add_food(Food.new("Sweet Tea", "8 oz", 100), 2)

dinner = Meal.new("Dinner")
dinner.add_food(Food.new("Broccoli", "1 cup", 40), 1)
dinner.add_food(Food.new("Steak", "5 oz", 240), 1.6)
dinner.add_food(Food.new("Mashed Potatoes", "1 cup", 255), 1.5)
dinner.add_food(Food.new("Gravy", "1 cup", 125), 0.25)
dinner.add_food(Food.new("Rice", "1 cup", 230), 1)
dinner.add_food(Food.new("Ice Cream", "1 cup", 270), 1)
dinner.add_food(Food.new("Soda", "12 oz", 180), 1)

snacks = Meal.new("Snacks")
snacks.add_food(Food.new("Chips", "10 chips", 100), 3)
snacks.add_food(Food.new("Fruit snacks", "1 bag", 89), 1)
snacks.add_food(Food.new("Trail Mix", "1 cup", 693), 0.2)

monday = Day.new("Monday", 2000)

monday.add_meal(breakfast)
monday.add_meal(lunch)
monday.add_meal(dinner)
monday.add_meal(snacks)

tuesday = Day.new("Tuesday", 2000)

tuesday.add_meal(breakfast)
tuesday.add_meal(lunch)
tuesday.add_meal(dinner)
tuesday.add_meal(snacks)

tuesday.add_activity(workout)

month1 = Month.new("January", monday.total_calories, 2000)

puts "He gained #{month1.weight_gained} lbs in 1 month"

puts "Total daily calories: #{monday.total_calories}"

puts "Did he meet his goal: #{monday.met_goal?}"

puts "He burned #{workout.total_calories_burned} calories"
