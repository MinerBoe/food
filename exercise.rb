class Exercise

	attr_accessor :name, :calories_burned_per_hour

	def initialize(name, calories_burned_per_hour)
		@name = name
		@calories_burned_per_hour = calories_burned_per_hour
	end

	def calories_burned(duration)
		(duration / 60.0) * calories_burned_per_hour
	end

	def to_s
		"#{name}"
	end

end