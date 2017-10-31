class Day

	attr_accessor :meals, :calorie_goal, :name, :exercises

	def initialize(name, calorie_goal)
		@name = name
		@meals = []
		@calorie_goal = calorie_goal
		@exercises = []

	end

	def add_meal(name)
		meals.push(name)
	end

	def add_activity(name)
		exercises.push(name)
	end

	def total_calories
		total = 0
		meals.each do |meal|
			total += meal.calories
		end
		exercises.each do |exercise|
			total -= exercise.total_calories_burned
		end

		total
	end

	def met_goal?
		total_calories <= calorie_goal
	end

end
