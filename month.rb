class Month

	def initialize(name)
		@name = name
		@weight_gained = 0 

	end

	def weight_gained(total_calories)
		(3500 - total_calories)
	end


end