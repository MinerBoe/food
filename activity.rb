class Activity

	attr_accessor :name, :exercises, :durations

	def initialize(name)
		@name = name
		@exercises = []
		@durations = []
	end

	def add_exercise(exercise, duration)
		exercises.push(exercise)
		durations.push(duration)
	end

	def total_calories_burned
		total = 0
		exercises.each_with_index do |exercise, i|
			puts exercise.calories_burned(durations[i])
			total += exercise.calories_burned(durations[i])
		end
		total
	end

end