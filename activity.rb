class Activity

	attr_accessor :name, :activities, :durations

	def initialize(name)
		@name = name
		@activities = []
		@durations = []
	end

	def add_exercise(activity, duration)
		activities.push(activity)
		durations.push(duration)
	end

	def total_calories_burned
		total = 0
		activities.each_with_index do |activity, i|
			total += activity.calories_burned(durations[i])
		end
		total
	end

end