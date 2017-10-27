class Month

	attr_accessor :daily_calories, :calorie_goal

	def initialize(name, daily_calories, calorie_goal)
		@name = name
		@daily_calories = daily_calories
		@calorie_goal = calorie_goal
		@calories_per_pound_of_fat = 3500

	end

	def weight_gained
		calories_over_goal = (daily_calories - calorie_goal) * 30
		calories_over_goal / @calories_per_pound_of_fat
	end


end