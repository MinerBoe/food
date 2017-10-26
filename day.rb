class Day

	attr_accessor :meals, :calorie_goal, :name

	def initialize(name, calorie_goal)
		@name = name
		@meals = []
		@calorie_goal = calorie_goal

	end

	def add_meal(name)
		meals.push(name)
	end

	def total_calories
		total = 0
		meals.each do |meal|
			total += meal.calories
		end

		total
	end

	def met_goal?
		total_calories <= calorie_goal
	end

end