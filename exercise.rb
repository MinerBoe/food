class Exercise

	attr_accessor :name, :calories_burned_per_hour

	MINS_IN_HOUR = 60.0

	def initialize(name, calories_burned_per_hour)
		@name = name
		@calories_burned_per_hour = calories_burned_per_hour
	end

	def calories_burned(duration)
		(duration / MINS_IN_HOUR) * calories_burned_per_hour
	end

	def to_s
		"#{name}"
	end

end